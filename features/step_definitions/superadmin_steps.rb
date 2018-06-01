Given(/^the following superadmin exist$/) do |table|
  table.hashes.each do |hash|
   create(:user, email: hash[:email], password: hash[:password],password_confirmation: hash[:password_confirmation], role: hash[:role])
  end
end

Given(/^the following buildings exist in the database$/) do |table|
  table.hashes.each do |hash|
   create(:building, name: hash[:name], street: hash[:street])
  end
end

Given(/^I am on the dashboard page$/) do
  visit dashboards_path
end

Given(/^the following facilities exist$/) do |table|
  building = Building.find_by(name: "bighouse")
  table.hashes.each do |hash|
    create(:facility, name: hash[:name], description: hash[:description], building_id: building.id)
  end
end
