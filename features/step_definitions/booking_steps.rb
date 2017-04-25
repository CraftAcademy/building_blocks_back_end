Given(/^there is a facility named "([^"]*)"$/) do |name|
  create(:facility, name: name)
end

Given(/^I am on the booking page for "([^"]*)"$/) do |name|
  facility = Facility.find_by(name: name)
  visit facility_bookings_path(facility)
end
