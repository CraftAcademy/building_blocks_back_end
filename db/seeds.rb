News.delete_all

News.create(title: "Party", description: "Awesome party")
News.create(title: "Grill", description: "Awesome grill")

puts "Created #{News.count} news"
