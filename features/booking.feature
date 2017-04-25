Feature: Booking an facility
  As an tenant
  In order to book a time at a facility
  I would like to be able to select a time slott at a facility.

  Scenario: I book time slott at a facility.
    And I am on the index booking page
    And I click link "04"
    Then I should see "New booking"
    And I click link "Time 15.00-18.00"
    Then I should see "Booking was successfully created."
    And I am on the index booking page
    Then I should see "04 tester 15:00"
