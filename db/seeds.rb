# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
puts "Cleaning database..."
Restaurant.destroy_all

puts "Creating restaurants..."
dishoom = { name: "Dishoom", address: "7 Boundary St, London E2 7JE", category: 'belgian', phone_number: "0143321256" }
lotus_bleu = { name: "Le Lotus Bleu", address: "17 rue de Belleville", category: 'japanese', phone_number: "0143321256" }
surpriz = { name: "Surpriz", address: "142 bd St Martin", category: 'french', phone_number: "0143321256" }
taitai = { name: "Tai Tai", address: "127 av Beaumarchet", category: 'chinese', phone_number: "0143321256" }
little_italia = { name: "Little Italia", address: "12 bd Montorgueil", category: 'italian', phone_number: "0143321256" }
pizza_east =  { name: "Pizza East", address: "56A Shoreditch High St, London E1 6PQ", category: 'italian', phone_number: "0143321256" }

all_restaurants = [dishoom, lotus_bleu, surpriz, taitai, little_italia, pizza_east]
all_restaurants.each do |attributes|
  restaurant = Restaurant.create!(attributes)
  puts "Created #{restaurant.name}"
end
puts "Finished!"
