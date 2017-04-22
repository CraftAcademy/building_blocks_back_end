Feature: add layout and information to index
  As an administrator
  In order to keep controll of my bulding
  I would like to be able to see important info on index page and links to important features

  Background:
    Given the following help request messages exist
      | title   | message         | urgent |
      | Fabian  | With peeing dog | true   |
      | Felix   | In fish church  | false  |
    Given the following news exist
      | title        | description     |
      | house fiesta | big burrito     |
      | new lift     | no more stairs  |

    Scenario: Call for help messages are displayed
      Given I am on the index page
      Then I should see "Home Sign up Help requests Facilities"
      And I should see "Fabian"
      And I should see "With peeing dog"
      And I should see "house fiesta"
      And I should see "big burrito"
      Then I should see "Stuck in toilet"
