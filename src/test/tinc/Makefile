CUR_DIR:=`pwd`
EXT:=$(CUR_DIR)/ext


unit: tincunit
regress: tincregress
check: tinccheck tincmmgrcheck
tinccheck: tincunit tincregress
tincmmgrcheck: tincmmgrunit tincmmgrregress

tincunit:
	@echo unit test tinc
	make -C tinctest unit

tincregress:
	@echo regression test tinc
	make -C tinctest regress

tincmmgrunit:
	@echo unit test tincmmgr
	make -C tincmmgr unit

tincmmgrregress:
	@echo regression test tincmmgr
	make -C tincmmgr regress

TESTER= \
	export PGDATABASE=gptest && \
	export TINCHOME=$(PWD) && \
	export TINCREPOHOME=$(TINCHOME)/tincrepo && \
	export PYTHONPATH=$(TINCHOME):$(TINCHOME)/ext:$(PYTHONPATH):$(TINCREPOHOME) && \
	export PATH=$(TINCHOME):$(TINCHOME)/ext:$(TINCHOME)/ext/unittest2:$(TINCHOME)/sbin/:$(PATH) && \
	tinc.py

DISCOVER=discover

# cs-storage
# The following targets are pulled from:
# http://pulse-cloud.gopivotal.com/admin/projects/cs-storage
#
# Refer to the properties of the pulse project and individual build
# stages for configuration requirements.

storage_vacuum_xidlimits:
	$(TESTER) $(DISCOVER) \
	-s tincrepo/mpp/gpdb/tests/storage/vacuum/xidlimits

aocoalter_catalog_loaders:
	$(TESTER) $(DISCOVER) -t tincrepo/mpp/gpdb/tests \
	-s storage/aoco_alter \
	-s catalog/mpp25256 \
	-s catalog/oid_inconsistency \
	-s catalog/udf_exception_handling

storage_uao_and_transactionmanagement:
	$(TESTER) $(DISCOVER) -t tincrepo/mpp/gpdb/tests \
	-s storage/transaction_management \
	-s storage/uao

# WALREP_FIXME: there are no "peristent" tests anymore. Rename this
# target, and fix concourse pipelines accordingly.
storage_persistent_accessmethods_and_vacuum:
	$(TESTER) $(DISCOVER) -t tincrepo/mpp/gpdb/tests/storage \
	-s access_methods \
	-s vacuum \
	-q "class!=XidlimitsTests"

# cs-walrepl-multinode
walrep_1:
	$(TESTER) $(DISCOVER) -t tincrepo/mpp/gpdb/tests/storage/walrepl \
	-s gpactivatestandby \
	-s gpinitstandby \
	-s gpstart \
	-s gpstate \
	-s gpstop \
	-s run

walrep_2:
	$(TESTER) $(DISCOVER) -t tincrepo/mpp/gpdb/tests/storage/walrepl \
	-s basebackup \
	-s oom \
	-s regress \
	-s smart_shutdown \
	-s syncrep \
	-s walreceiver \
	-s walsender \
	-s xact \
	-s crash \
	-q "class!=DDLTestCase" \
	-q "class!=DMLTestCase"

test_pg_twophase:
	$(TESTER) $(DISCOVER) \
	-s tincrepo/mpp/gpdb/tests/storage/pg_twophase \
	-p test_pg_twophase.py \
	-p test_switch.py

runaway_query:
	$(TESTER) \
		resource_management.runaway_query.runaway_query_scenario.test_runaway_query_scenario.RQTScenarioTestCase \
		resource_management.runaway_query.runaway_detector.test_runaway_detector.RunawayDetectorTestCase \
		resource_management.runaway_query.runaway_query_limits.test_runaway_query.RunawayQueryTestCase \
		resource_management.runaway_query.runaway_query_multisession.test_runaway_multisession.RunawayMultiSessionTestCase \
		resource_management.runaway_query.runaway_query_vmem_memoryaccounting.test_runaway_query_vmem_memoryaccounting.RQTMemoryAccountingTestCase \
		resource_management.runaway_query.runaway_query_stress.test_runaway_query_stress.RunawayQueryStressTestCase

memory_accounting:
	$(TESTER) \
		resource_management.memory_accounting.test_oom.OOMTestCase \
		resource_management.memory_accounting.too_many_exec_accounts.test_exec_accounts

# gpexpand test
gpexpand_1:
	$(TESTER) $(DISCOVER) \
	-s mpp/gpdb/tests/utilities/gpexpand \
	-q tags=part1

gpexpand_2:
	$(TESTER) $(DISCOVER) \
	-s mpp/gpdb/tests/utilities/gpexpand \
	-q tags=part2

# mpp interconnect test
mpp_interconnect:
	make -C tincrepo/mpp/gpdb/tests/dispatch/interconnect/ickm all distribute
	$(TESTER) $(DISCOVER) -t tincrepo/mpp/gpdb/tests \
	-s dispatch/interconnect
