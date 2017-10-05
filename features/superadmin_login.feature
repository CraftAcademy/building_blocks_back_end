Feature: Superadmin log in
  As a superadmin
  In order to view the dashboard
  I would like to be able to log in as a superadmin

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
