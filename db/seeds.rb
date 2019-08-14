# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

puts "creating restaurant..."

Restaurant.destroy_all

Restaurant.create(name: "leo", address: "amsterdam", phone_number: "3426282", category: "italian")
Restaurant.create(name: "celine", address: "paris", phone_number: "632492", category: "french")
Restaurant.create(name: "franz", address: "amsterdam", phone_number: "0284", category: "japanese")
Restaurant.create(name: "louise", address: "den hague", phone_number: "29048", category: "belgian")
Restaurant.create(name: "christine", address: "Toulouse", phone_number: "02864", category: "french")

puts "you have now #{Restaurant.count} created"
