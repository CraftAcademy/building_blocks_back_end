Given(/^there is a facility named "([^"]*)"$/) do |name|
  facility = create(:facility, name: name)
end

Given(/^I am on the booking page for "([^"]*)"$/) do |name|
  facility = Facility.find_by(name: name)
  visit facility_bookings_path(facility)
end

Given(/^there is a facility named and timeslot "([^"]*)"$/) do |name|
  facility = create(:facility, name: name)
  create(:timeslot, start_time: '15:00', end_time: '18:00', facility_id: facility.id)
end
