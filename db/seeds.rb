# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
require 'pry-byebug'

user1 = User.new(firstname: "Camille", lastname: "Menard", age: 24, email: "c.menard@outlook.fr", password: "Hello2", nationality: "Française", situation: "Le wagon student")
#binding.pry
user1.save!

user2 = User.new(firstname: "Antoine", lastname: "Pontier", age: 24, email: "a.pontier@free.fr", password: "Hello2", nationality: "Italien", situation: "Chef de projet")
user2.save!

100.times do
  city = ["Marseille", "Lille", "Bordeaux", "Paris", "Lyon", "Nantes", "Toulouse"].sample
  address = ["14 rue Charles de Gaulle", "22 rue Louis Pasteur", "8 rue Victor Hugo", "31 rue Jean Jaurès", "83 boulevard Léon Gambetta"].sample
  flat_surface = [70, 80, 90, 95, 100, 110, 120, 130].sample
  rent = [300, 320, 340, 360, 370, 380, 390, 400, 410, 420, 430, 440, 450].sample
  number = [2, 3, 4, 5].sample

 flat = Flat.new(city: city, address: address, available_from: Date.new(2019,01,01), flat_surface: flat_surface, room_surface: 12, number_of_rooms: number, number_of_roommates: number, rent: rent, user: [User.first, User.last].sample)

 flat.save!
end

