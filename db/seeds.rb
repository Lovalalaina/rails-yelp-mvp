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
dishoomA = {name: "DishoomA", address: "7 Boundary St, London E2 7JE", category:"french", phone_number: '04911234565'}
dishoomB = {name: "DishoomB", address: "9 Boundary St, London E2 7JE", category:"belgian", phone_number: '04911234566'}
dishoomC = {name: "DishoomC", address: "11 Boundary St, London E2 7JE", category:"italian", phone_number: '04911234567'}
dishoomD = {name: "DishoomD", address: "13 Boundary St, London E2 7JE", category:"chinese", phone_number: '04911234568'}
dishoomE = {name: "DishoomE", address: "15 Boundary St, London E2 7JE", category:"japanese", phone_number: '04911234569'}
dishoomF = {name: "DishoomF", address: "17 Boundary St, London E2 7JE", category:"french", phone_number: '04911234562'}

[dishoomA, dishoomB, dishoomC, dishoomD, dishoomE, dishoomF].each do |attributes|
  restaurant = Restaurant.create!(attributes)
  puts "Created #{restaurant.name}"
end
