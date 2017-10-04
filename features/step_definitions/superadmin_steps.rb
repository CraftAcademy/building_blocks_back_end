Given(/^the following superadmin exist$/) do |table|
  table.hashes.each do |hash|
   create(:user, email: hash[:email], password: hash[:password],password_confirmation: hash[:password_confirmation], role: hash[:role])
  end
end
