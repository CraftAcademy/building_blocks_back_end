News.delete_all
Timeslot.delete_all
Facility.delete_all
Workorder.delete_all
HelpRequest.delete_all
Building.delete_all
User.delete_all

User.create(email: "info@buildingblockz.se", password: "123456", role: "superadmin")

puts "Created #{User.count} users"
