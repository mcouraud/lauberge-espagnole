# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

user = User.new(firstname: "Mathilde", lastname: "Couraud", age: 24, email: "mcouraud@outlook.fr", nationality: "French", situation: "Le wagon student")
user.save

5.times do
 flat = Flat.new(city: "Marseille", address: "21 rue berlioz", available_from: Date.new(2019,01,01), flat_surface: 80, room_surface: 15, number_of_rooms: 3, number_of_roommates: 3, rent: 415, user_id: 1)
 flat.save
end

