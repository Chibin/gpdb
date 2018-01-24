@gpexpand
Feature: expand the cluster by adding more segments

    Scenario: expand a cluster that has no mirrors
        Given a working directory of the test as '/tmp/gpexpand_behave'
        And a cluster with no mirrors
        And database "gptest" exists
        And there are no gpexpand_inputfiles
        And the user runs gpexpand interview to add 2 new segments
        And the number of segments have been saved
        When the user runs gpexpand with the latest gpexpand_inputfile
        Then verify that the cluster has 2 new segments
