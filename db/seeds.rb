# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)
puts "Cleaning database..."
Restaurant.destroy_all
puts "Creating restaurants..."
dishoom = {name: "Dishoom", address: "7 Boundary St, London E2 7JE", category: "chinese", phone_number: "1234"}
pizza_east =  {name: "Pizza East", address: "56A Shoreditch High St, London E1 6PQ", category: "italian", phone_number: "5678"}
ohlala = {name: "Ohlala", address: "7 janvier st, Brussels", category: "belgian", phone_number: "1357"}
kamikaze =  {name: "Kamikaze", address: "5 bruc st, Barcelona", category: "japanese", phone_number: "9876"}
amour =  {name: "Amour", address: "1 Napoleon st, Toulouse", category: "french", phone_number: "7531"}

[dishoom, pizza_east, ohlala, kamikaze, amour].each do |attributes|
  restaurant = Restaurant.create!(attributes)
  puts "Created #{restaurant.name}"
end
puts "Finished!"
