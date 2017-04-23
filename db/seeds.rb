News.delete_all

News.create(title: "Party", description: "Awesome party")
News.create(title: "Grill", description: "Awesome grill")
News.create(title: "Sauna", description: "Sauna is broken")
News.create(title: "Bill",  description: "Bill has moved out, yay!")
News.create(title: "Johan", description: "Has been evicted")
News.create(title: "Casper", description: "Has no pants because of pants fire")
News.create(title: "Playground", description: "Playground is being repaired")
News.create(title: "Cleaning", description: "Time for spring cleaning!")

Facility.create(name: "Sauna", description: "Awesome sauna", rules: "No underwear")
Facility.create(name: "Laundry", description: "Awesome laundry room", rules: "Leave it as you found it")
Facility.create(name: "Roof terrace", description: "Sunny terrace", rules: "No smoking")
Facility.create(name: "Backyard", description: "Backyard with barbecue", rules: "No dogs allowed")

Workorder.create(title: "some work", message: "some message", location: "umee", urgent: "true")

puts "Created #{News.count} news"
puts "Created #{Facility.count} facilities"
puts "Created #{Workorder.count} workorders"
