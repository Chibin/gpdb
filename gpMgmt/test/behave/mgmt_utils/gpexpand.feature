@gpexpand
Feature: expand the cluster by adding more segments

    @gpexpand_segment
    Scenario: expand a cluster that has no mirrors
        Given a working directory of the test as '/tmp/gpexpand_behave'
        #TODO: Given keys are exhanged
        Given a temporary directory to expand into
        And a cluster with no mirrors
        And database "gptest" exists
        And there are no gpexpand_inputfiles
        And the current hosts is setup with for an expansion
        And the user runs gpexpand interview to add 2 new segment and 0 new host "ignored.host"
        # TODO: wording
        And the number of segments have been saved
        When the user runs gpexpand with the latest gpexpand_inputfile
        Then verify that the cluster has 2 new segments

    @gpexpand_host
    Scenario: expand a cluster that has no mirrors with one new hosts
        Given a working directory of the test as '/tmp/gpexpand_behave'
        #TODO: Given keys are exhanged
        Given a temporary directory to expand into
        And a cluster with no mirrors
        And database "gptest" exists
        And there are no gpexpand_inputfiles
        And the current hosts is setup with for an expansion
        And the new host "briarwood.local" is ready to go
        And the user runs gpexpand interview to add 0 new segment and 1 new host "briarwood.local"
        # TODO: wording
        And the number of segments have been saved
        When the user runs gpexpand with the latest gpexpand_inputfile
        Then verify that the cluster has 2 new segments

    @gpexpand_host_and_segment
    Scenario: expand a cluster that has no mirrors with one new hosts
        Given a working directory of the test as '/tmp/gpexpand_behave'
        #TODO: Given keys are exhanged
        And a temporary directory to expand into
        And a cluster with no mirrors
        And database "gptest" exists
        And there are no gpexpand_inputfiles
        And the current hosts is setup with for an expansion
        And the new host "briarwood.local" is ready to go
        And the user runs gpexpand interview to add 1 new segment and 1 new host "briarwood.local"
        # TODO: wording
        And the number of segments have been saved
        When the user runs gpexpand with the latest gpexpand_inputfile
        # host1: add 1 new segment  host2: add 3 new segments
        Then verify that the cluster has 4 new segments

    # XXX: we're trying to replace TINC src/test/tinc/tincrepo/mpp/gpdb/tests/utilities/gpexpand/
    # TODO:
    # Do we care about having large data/workload before doing an expand?
    # We need to run `gpexpand -c -D <database>` in order to run another gpexpand.
    # Evluate behave steps and test utilities in the perspective of a "what would an operator have to do"
    # create a behave test for gpexpand + tablespaces. This does not exist in the TINC test
    # WHY is GPSSH so SLOW on mac?
    # gpexpand doesn't throw non-zero exit code in specific scenarios.
