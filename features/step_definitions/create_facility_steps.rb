Given(/^I am on the create news facility page$/) do
  visit new_facility_path
end

Then(/^I check Available check box$/) do
  check 'facility_status'
end

Given(/^I am on the facility show page$/) do
  visit facilities_path
end
