Feature: Admin booking page
  As an administrator
  In order to sett up roles for booking a facilities
  I would like to be able to manage the facilities booking settings.

  Scenario: Create booking schedule for a facility
    Given there is a facility named "Laundry Room"
    And I am on the facility show page
    And I click link "Laundry Room"
    Then I should see "scheduleing controll for Laundry Room"
    And I select "09:00" from "opening hour"
    And I select "21:00" from "closing hour"
    And I select "4" from "number of time slot"
    And I click "set"
    Then I should see "schedule created"
