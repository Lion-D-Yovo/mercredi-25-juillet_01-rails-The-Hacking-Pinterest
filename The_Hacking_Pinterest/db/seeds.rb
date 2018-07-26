# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

require 'faker'

10.times{User.new(user: Faker::GameOfThrones.character)}#insert 10 ligne a User 
10.times{Pin.new(url: Faker::GameOfThrones.city+'.com',user_id: rand(1..10)).save}#insert 10 ligne a Pin
10.times{Comment.new(comment: Faker::GameOfThrones.quote,user_id: rand(1..10), pin_id: rand(1..10)).save}#insert 10 ligne a Commentaire