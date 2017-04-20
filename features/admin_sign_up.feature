Feature: Admin sign up
  As an admin
  In order to access admin account
  I would like to be able to sign up

 Scenario: I create an account
   Given I am on the index page
   And I click link "Sign up"
   Then I should see "Sign up"
   And I fill in "Email" with "morgan@morgan.com"
   And I fill in "Password" with "12345678"
   And I fill in "Password confirmation" with "12345678"
   And I click "Sign up"
   Then I should see "You have signed up successfully."
