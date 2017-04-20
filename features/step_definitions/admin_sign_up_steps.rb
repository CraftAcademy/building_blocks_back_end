Given(/^I am on the index page$/) do
  visit root_path
end

Given(/^I click link "([^"]*)"$/) do |link|
  click_link link
end
