Feature: Creat a new workorder
  As an administrator
  In order to provide the janitor with work orders
  I would like to be able to send a work orders to the janitor

  Background:
   Given the following help request messages exist
    | title   | message           | urgent |
    | Fabian  | Pants are gone    | true   |

  Scenario: I create and send a work order
    Given I am on the index page
    And I click link "New Work order"
    Then I should see "Send work order"
    And I fill in "Title" with "Fabian"
    And I fill in "Message" with "Pants are gone"
    And I fill in "Location" with "Västervik"
    And I check Urgent check box
    And I click "Send"
    Then I should see "New work order sent !!"

  Scenario: I create and send a work order
    Given I am on the show help request page
    And I click link "Fabian"
    Then I should see "Send work order"
    Then show me the page
    And I should see "Fabian"
    And I should see "Pants are gone"

    And I fill in "Location" with "Västervik"
    And I check Urgent check box
    And I click "Send"
    Then I should see "New work order sent !!"
