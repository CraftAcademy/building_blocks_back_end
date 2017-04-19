News.delete_all

News.create(title: "Party", description: "Awesome party")
News.create(title: "Grill", description: "Awesome grill")
News.create(title: "Sauna", description: "Sauna is broken")
News.create(title: "Bill",  description: "Bill has moved out, yay!")
News.create(title: "Johan", description: "Has been evicted")
News.create(title: "Casper", description: "Has no pants because of pants fire")
News.create(title: "Playground", description: "Playground is being repaired")
News.create(title: "Cleaning", description: "Time for spring cleaning!")

puts "Created #{News.count} news"
