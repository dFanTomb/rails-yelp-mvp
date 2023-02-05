# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)
require 'faker'

Restaurant.destroy_all
# creates fakes without id and does not show them
5.times do
  restaurant = Restaurant.create(
    name: Faker::Restaurant.name,
    address: Faker::Address.street_address,
    phone_number: Faker::PhoneNumber.cell_phone_in_e164,
    category: Faker::Restaurant.type
  )
  puts "Restaurant with id: #{restaurant.id} has been created"
end

# Restaurant.create(
#   name: 'Mama Kin',
#   address: '23 rue de Commerces',
#   phone_number: '+33123456789',
#   category: 'french'
# )

# Restaurant.create(
#   name: 'Roma',
#   address: '23 rue de Promaja',
#   phone_number: '+389123456',
#   category: 'belgian'
# )

# Restaurant.create(
#   name: 'Kaprichozza',
#   address: '23 rue de Commerces',
#   phone_number: '+31123456789',
#   category: 'italian'
# )

# Restaurant.create(
#   name: 'Chiu Chao',
#   address: '23 rue de Japanne',
#   phone_number: '+44323456789',
#   category: 'japanese'
# )

# Restaurant.create(
#   name: 'Hon Ton',
#   address: '23 rue de Chiua',
#   phone_number: '+25323456789',
#   category: 'chinese'
# )
