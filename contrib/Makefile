# $PostgreSQL: pgsql/contrib/Makefile,v 1.87 2009/03/25 23:20:01 tgl Exp $

subdir = contrib
top_builddir = ..
include $(top_builddir)/src/Makefile.global

WANTED_DIRS = \
		auto_explain	\
		btree_gin	\
		citext		\
		dblink		\
		dict_int	\
		dict_xsyn	\
		fuzzystrmatch	\
		hstore		\
		intarray \
		pageinspect \
		pg_stat_statements \
		pg_upgrade \
		pg_upgrade_support \
		test_parser \
		pgcrypto

# Greenplum-specific additions (to ease merge pain).
WANTED_DIRS += \
		xlogdump \
		pgbench \
		formatter \
		formatter_fixedwidth \
		extprotocol \
		gp_distribution_policy \
		gp_internal_tools \
		gp_inject_fault \
		gp_cancel_query \
		indexscan \
    passwordcheck

ifeq ($(with_openssl),yes)
WANTED_DIRS += sslinfo
endif

ifeq ($(with_ossp_uuid),yes)
WANTED_DIRS += uuid-ossp
endif

ifeq ($(with_libxml),yes)
WANTED_DIRS += xml2
endif

ifeq ($(enable_orca),yes)
WANTED_DIRS += orca_debug
endif

WANTED_DIRS += gp_replica_check

# Missing:
#		start-scripts	\ (does not have a makefile)


all install installdirs uninstall distprep clean distclean maintainer-clean:
	@for dir in $(WANTED_DIRS); do \
		$(MAKE) -C $$dir $@ || exit; \
	done

# We'd like check operations to run all the subtests before failing.
check installcheck:
	@CHECKERR=0; for dir in $(WANTED_DIRS); do \
		$(MAKE) -C $$dir $@ || CHECKERR=$$?; \
	done; \
	exit $$CHECKERR
