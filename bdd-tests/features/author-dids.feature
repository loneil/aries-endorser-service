@DIDs
Feature: Author Creates a new Public DID via Endorser

	@DIDs-001
    Scenario: Author connects to the Endorser and then creates a new Public DID
        Given There is a new agent "alice" that is connected to the endorser
        And "alice" has an "active" connection to the endorser
        And the endorser has an "active" connection with "alice"
        When "alice" creates a new local DID in their wallet
        And "alice" initiates an out of band process to register their DID
        And "alice" sets the new DID to be their wallet public DID
        And the endorser receives an endorsement request from "alice"
        And the endorser endorses the transaction from "alice"
        And "alice" receives the endorsed transaction from the endorser
        And "alice" writes the endorsed transaction to the ledger
        Then "alice" has a public DID
