# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

(1..48).each do |index|
  user = User.new
  user.first_name = Faker::Name.first_name
  user.last_name = Faker::Name.last_name
  user.email = Faker::Internet.email
  user.street_address = Faker::Address.street_address
  user.city = Faker::Address.city
  user.province = Faker::Address.state
  user.postal_code = Faker::Address.postcode
  user.country = Faker::Address.country
  user.save
  p "User is created #{user.email}"
  (1..48).each do |index2|
    micropost = Micropost.new
    micropost.message = Faker::Lorem.paragraph
    micropost.user = user
    micropost.save
    p "Micropost is created #{index2}"
  end
end
