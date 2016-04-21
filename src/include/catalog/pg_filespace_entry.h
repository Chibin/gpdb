/*-------------------------------------------------------------------------
 *
 * pg_filespace_entry.h
 *	  definition of the system filespace entry relation (pg_filespace_entry)
 *
 *    Where the pg_filespace table tracks the owner, name, permissions etc
 *    of the filespace the filespace_entry table tracks the directory 
 *    locations for a filespace on a segment by segment basis.
 *
 *    Unlike the pg_filespace catalog which is replicated across all segments
 *    the pg_filespace_entry table is a master-only table that is used queried
 *    during startup and used to pass startup parameters to the segments.
 *    This design allows adding additional segments to the system without the
 *    bootstrapping issue of what gets added first (the segment or the 
 *    filespace_entry for the segment).
 *
 * Copyright (c) 2009-2010, Greenplum Inc
 * Portions Copyright (c) 1996-2008, PostgreSQL Global Development Group
 * Portions Copyright (c) 1994, Regents of the University of California
 *
 * $PostgreSQL$
 *
 * NOTES
 *	  the genbki.sh script reads this file and generates .bki
 *	  information from the DATA() statements.
 *
 *-------------------------------------------------------------------------
 */
#ifndef PG_FILESPACE_ENTRY_H
#define PG_FILESPACE_ENTRY_H

/* ----------------
 *		postgres.h contains the system type definitions and the
 *		CATALOG(), BKI_BOOTSTRAP and DATA() sugar words so this file
 *		can be read by both genbki.sh and the C compiler.
 * ----------------
 */

/* TIDYCAT_BEGINDEF

   CREATE TABLE pg_filespace_entry
   with (camelcase=FileSpaceEntry, shared=true, oid=false, relid=5033, toast_oid=6094, toast_index=6095, content=MASTER_ONLY)
   (
   fsefsoid     oid, -- foreign key to pg_filespace 
   fsedbid      smallint, -- segment dbid this refers to 
   fselocation  text -- location of filespace directory
   );

   create index on pg_filespace_entry(fsefsoid) with (indexid=6090, indexname=pg_filespace_entry_fs_index);
   create unique index on pg_filespace_entry(fsefsoid, fsedbid) with (indexid=6091, indexname=pg_filespace_entry_fsdb_index);

   alter table pg_filespace_entry add fk fsefsoid on pg_filespace(oid);

   TIDYCAT_ENDDEF
*/
/* TIDYCAT_BEGIN_CODEGEN 

   WARNING: DO NOT MODIFY THE FOLLOWING SECTION: 
   Generated by tidycat.pl version 21.
   on Wed Nov 24 14:12:38 2010
*/


/*
 TidyCat Comments for pg_filespace_entry:
  Table is shared, so catalog.c:IsSharedRelation is updated.
  Table does not have an Oid column.
  Table has static type (see pg_types.h).
  Table has TOASTable columns, and TOAST table has static type.
  Table contents are only maintained on MASTER.

*/

/* ----------------
 *		pg_filespace_entry definition.  cpp turns this into
 *		typedef struct FormData_pg_filespace_entry
 * ----------------
 */
#define FileSpaceEntryRelationId	5033

CATALOG(pg_filespace_entry,5033) BKI_SHARED_RELATION BKI_WITHOUT_OIDS
{
	Oid		fsefsoid;		/* foreign key to pg_filespace  */
	int2	fsedbid;		/* segment dbid this refers to  */
	text	fselocation;	/* location of filespace directory */
} FormData_pg_filespace_entry;


/* ----------------
 *		Form_pg_filespace_entry corresponds to a pointer to a tuple with
 *		the format of pg_filespace_entry relation.
 * ----------------
 */
typedef FormData_pg_filespace_entry *Form_pg_filespace_entry;


/* ----------------
 *		compiler constants for pg_filespace_entry
 * ----------------
 */
#define Natts_pg_filespace_entry			3
#define Anum_pg_filespace_entry_fsefsoid	1
#define Anum_pg_filespace_entry_fsedbid		2
#define Anum_pg_filespace_entry_fselocation	3


/* TIDYCAT_END_CODEGEN */


#endif   /* PG_FILESPACE_ENTRY_H */