Feature: Admin booking page
  As an administrator
  In order to sett up roles for booking a facilities
  I would like to be able to manage the facilities booking settings.

  Scenario: Create booking schedule for a facility
    Given there is a facility named "Laundry Room"
    And I am on the facility show page
    And I click link "Laundry Room"
    Then I should see "Scheduling control for Laundry Room"
    And I select "9" from "start_time"
    And I select "5" from "time_slot"
    And I select "3" from "hours"
    And I click "Set schedule"
    Then I should see "schedule created"
    And I am on the facility show page
    And I click link "Laundry Room"
    Then I should not see "Set schedule"
