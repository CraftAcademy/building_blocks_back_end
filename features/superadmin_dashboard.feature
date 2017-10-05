Feature: Superadmin dashboard
  As a superadmin
  In order to manage the buildings features
  I would like to be able to turn on and off features for the buildings

  Background:
    Given the following superadmin exist
      | email                  | password | password_confirmation | role       |
      | info@buildingblockz.se | 123456   | 123456                | superadmin |
    Given the following users exist
     | email           | password  | password_confirmation | role  |
     | nubbe@nubbe.com | 12345678  | 12345678              | admin |
    Given the following buildings exist
     | name        | street      |
     | bighouse    | bigstreet   |

    Scenario: Superadmin logs in
        Given I am on the sign in page
        And I fill in "Email" with "info@buildingblockz.se"
        And I fill in "Password" with "123456"
        And I click "Log in"
        Then I should see "Superadmin dashboard"
        And I should see "bighouse"
        Then I should see "bigstreet"

    Scenario: Superadmin turns off a feature
      Given I am on the dashboard page
      And I click link "bighouse"
      Then I should see "Manage bighouse"
