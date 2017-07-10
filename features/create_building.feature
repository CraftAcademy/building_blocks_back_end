Feature: Admin sign up and create a building
  As an admin
  In order to access admin account
  I would like to be able to sign up and create a building

 Scenario: I create an admin account
   Given I am on the root page
   Then I should see "Sign up"
   And I fill in "Email" with "morgan@morgan.com"
   And I select "admin" from "Role"
   And I fill in "Password" with "12345678"
   And I fill in "Password confirmation" with "12345678"
   And I click "Sign up"
   Then I should see "Create a new building"
   And I fill in "Name" with "Bighouse"
   And I click "Create"
   Then I should see "New house created!"

 Scenario: I create an account without e-mail
   Given I am on the registration page
   Then I should see "Sign up"
   When I fill in "Email" with ""
   Then I click "Sign up"
   And I should see "Email can't be blank"
