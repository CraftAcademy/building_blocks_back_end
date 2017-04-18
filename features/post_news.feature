Feature: Post news
  As an administrator
  In order to keep my tenants up to date with news and events regarding the building
  I would like to be able to create a news item.

  Scenario: I create a new news post
    Given I am on the create news post page
    Then I should see "Create a news message"
    And I fill in "Title" with "house fiesta"
    And I fill in "Description" with "big burrito"
    And I click "Submit"
    Then I should see "News post created!"
