@gpexpand
Feature: expand the cluster by adding more segments

    Scenario: expand a cluster that has no mirrors
        Given a working directory of the test as '/tmp/gpexpand_behave'
        And a cluster with no mirrors
        And database "gptest" exists
        And there are no gpexpand_inputfiles
        And the user runs gpexpand interview to add 2 new segment
        And the number of segments have been saved
        When the user runs gpexpand with the latest gpexpand_inputfile
        Then verify that the cluster has 2 new segments

    @gpexpand_1_host
    Scenario: expand a cluster that has no mirrors with one new hosts
        Given a working directory of the test as '/tmp/gpexpand_behave'
        #Given keys are exhanged
        And a cluster with no mirrors
        And database "gptest" exists
        And there are no gpexpand_inputfiles
        And the user runs gpexpand interview to add 0 new segment and 1 new host "briarwood.local"
        # TODO: wording
        And the new host "briarwood.local" is ready to go
        And the number of segments have been saved
        When the user runs gpexpand with the latest gpexpand_inputfile
        Then verify that the cluster has 2 new segments
