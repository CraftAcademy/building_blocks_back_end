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
