Feature: Creat a new facility
  As an administrator
  In order to show the buldings facility's
  I would like to be able to create a new facility's.

  Scenario: I create a new new facility
    Given I am on the create news facility page
    Then I should see "Create a new facility"
    And I fill in "Name" with "yard"
    And I fill in "Description" with "dog yard"
    And I fill in "status" with "true"
    And I fill in "rules" with "no dog's!!!"
    And I click "Submit"
    Then I should see "New facility created!"
