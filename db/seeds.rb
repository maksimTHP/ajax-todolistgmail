# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
require 'faker'

puts "Réinitialisation de la table Email"
Email.destroy_all
puts "Table Email réinitialisée"

puts "Création des seeds ..."
seed = 1
5.times do
  Email.create(
    object: Faker::Artist.name,
    body: Faker::Lorem.sentence)
    puts "Création du seed #{seed}"
    seed += 1
end
puts "Création des seeds terminées."
