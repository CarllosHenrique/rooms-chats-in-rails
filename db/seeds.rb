# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)



10.times do |i|
    User.create(name: "My name is #{i}", nick: "User#{i}", email:"#{i}user@gmail.com", password: "123456")
end


10.times do |i|
    Room.create(name: "Room #{i}", description: "This is the room #{i}", user_id: i)
end