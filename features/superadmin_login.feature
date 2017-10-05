Feature: Superadmin log in
  As a superadmin
  In order to view the dashboard
  I would like to be able to log in as a superadmin

  Background:
    Given the following superadmin exist
      | email                  | password | password_confirmation | role       |
      | info@buildingblockz.se | 123456   | 123456                | superadmin |

    Scenario: Superadmin logs in
        Given I am on the sign in page
        And I fill in "Email" with "info@buildingblockz.se"
        And I fill in "Password" with "123456"
        And I click "Log in"
        Then I should see "Superadmin dashboard"
