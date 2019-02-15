# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

(1..3).each do |index|
  user = User.new
  user.first_name = "carmen #{index}"
  user.last_name = "Kerim"
  user.email = "#{index}car@gmail.com"
  user.save
  p "User is created #{user.email}"
  (1..5).each do |index2|
    micropost = Micropost.new
    micropost.message = "This is a micro post message #{index2}"
    micropost.user = user
    micropost.save
    p "Micropost is created #{index2}"
  end
end
