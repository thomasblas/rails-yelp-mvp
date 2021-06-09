# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
Restaurant.destroy_all
puts "Creating restaurants..."
dishoom = { name: "Dishoom", address: "7 Boundary St, London E2 7JE", phone_number: "0612345678", category: "french" }
pizza_east = { name: "Pizza East", address: "56A Shoreditch High St, London E1 6PQ", phone_number: "0612345678", category: "belgian" }
la_famille = { name: "La Famille", address: "56A Shoreditch High St, London E1 6PQ", phone_number: "0612345678", category: "belgian" }
so_good = { name: "So Good", address: "56A Shoreditch High St, London E1 6PQ", phone_number: "0612345678", category: "belgian" }
bagels_ma_gueule = { name: "Bagel", address: "56A Shoreditch High St, London E1 6PQ", phone_number: "0612345678", category: "belgian" }

[dishoom, pizza_east, la_famille, so_good, bagels_ma_gueule].each do |attributes|
  restaurant = Restaurant.create!(attributes)
  puts "Created #{restaurant.name}"
end
puts "Finished!"
