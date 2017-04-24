Then(/^I check Urgent check box$/) do
  check 'workorder_urgent'
end

Then(/^I should see "([^"]*)" in field "([^"]*)"$/) do |value, field|
  expect(find_field(field).value).to eq value
end

Given(/^the following work orders messages exist$/) do |table|
  table.hashes.each do |hash|
    create(:workorder, title: hash[:title], message: hash[:message], location: hash[:location], urgent: hash[:urgent])
  end
end

Given(/^I am on the work orders index page$/) do
  visit workorders_path
end
