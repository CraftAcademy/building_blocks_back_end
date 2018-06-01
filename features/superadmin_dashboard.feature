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
      | name        | street    |
      | bighouse    | bigstreet |
    Given the following facilities exist
      | name        | description |
      | Sauna       | No towels   |

    Scenario: Superadmin logs in
      Given I am on the sign in page
      And I fill in "Email" with "info@buildingblockz.se"
      And I fill in "Password" with "123456"
      And I click "Log in"
      And I should see "Superadmin dashboard"
      Then I should see "bighouse"

    Scenario: Superadmin views features of a building
      Given I am on the dashboard page
      Given I am logged in as "nubbe@nubbe.com"
      And I click link "bighouse"
      Then I should see "Manage bighouse"
      And I click link "Add help request"
      Then I should see "Activate help request feature"
      And I fill in "Title" with "No pants"
      And I fill in "Message" with "Great"
      And I click "Send"
      Then I should see "New help request sent !!"
