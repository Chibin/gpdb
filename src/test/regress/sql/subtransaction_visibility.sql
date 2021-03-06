-- Test intends to validate tuple visibility between QE reader and writer in
-- presence of subtransactions

drop table if exists subxact1;
create table subxact1(a int) distributed by (a);

--
-- Plpgsql functions
--

-- A recursive function to insert a value in subxact1 table and abort
-- after insert if specified.
create or replace function recurse(nest integer, value integer, abortme boolean)
returns void as
$$
declare
   i integer;
begin
   i = nest - 1;
   if i > 0 then
      perform recurse(i, value, abortme);
   end if;
   execute 'insert into subxact1 values ('|| value ||')';
   if abortme = true then
      raise exception 'abort me';
   end if;
exception
   when raise_exception then
      raise notice 'abort me %', value;
   when others then
      raise notice 'we should never get here';
end;
$$
language plpgsql;

-- TEST: all subtransactions committed without overflow
begin;
select recurse(10, 0, false);
select count(*) = 10 as passed from subxact1 where a = 0;
savepoint subtx_no_overflow;
-- create a reader gang, and all tuples inserted by previous subtransactions
-- should be visible.
insert into subxact1 select * from subxact1;
select count(*) = 20 as passed from subxact1 where a = 0;
commit;

-- TEST: all subtransactions committed with overflow
-- Recurse to a depth greater than PGPROC_MAX_CACHED_SUBXIDS
begin;
select recurse(65, -1, false);
select count(*) = 65 as passed from subxact1 where a = -1;
savepoint subtx_with_overflow;
-- create a reader gang, and all tuples inserted by previous subtransactions
-- should be visible.
insert into subxact1 select * from subxact1;
release subtx_with_overflow;
select count(*) = 130 as passed from subxact1 where a = -1;
commit;

-- TEST: some subtransactions aborted with reader gang for cursor
-- Some subtransactions abort while more than PGPROC_MAX_CACHED_SUBXIDS of them
-- commit.  Tuples inserted by aborted subtransactions should not be
-- visible.
begin;
select recurse(30, -2, false); -- committed
select recurse(10, -3, true); -- aborted
declare c1 cursor for select count(*) = 30 passed from subxact1 where a in (-2, -3);
select recurse(35, -2, false); -- committed
savepoint subtx_with_overflow_mixed_abort;
-- Validate that rows inserted by committed subtransactions are
-- visible and rows inserted by aborted subtransactions aren't.
fetch all in c1;
release subtx_with_overflow_mixed_abort;
select count(*) = 65 as passed from subxact1 where a = -2;
select count(*) = 0 as passed from subxact1 where a = -3;
commit;
