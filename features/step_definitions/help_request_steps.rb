Given(/^the following help request messages exist$/) do |table|
  table.hashes.each do |hash|
    create(:help_request, title: hash[:title], message: hash[:message])
  end
end

Given(/^I am on the show help request page$/) do
  visit help_requests_path
end

Given(/^the following work orders messages exist$/) do |table|
  table.hashes.each do |hash|
    create(:workorder, title: hash[:title], message: hash[:message], location: hash[:location], urgent: hash[:urgent])
  end
end

Given(/^I am on the work orders index page$/) do
  visit workorders_path
end

Then(/^I select "([^"]*)" from "([^"]*)"$/) do |option, category|
  select option, from: category
end
