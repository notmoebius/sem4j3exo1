# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
require 'faker'

my_genre = ["action", "horreur", "comédie", "drame"]
100.times do
    rating = rand(1.0..5.0).round(2)
  movie = Movie.create!(name: Faker::Book.title, 
    year: Faker::Number.between(1900, 2020), 
    synopsis: Faker::Lorem.sentence(10),
    genre: my_genre[rand(my_genre.length)],
    director: Faker::Book.author,
    allocine_rating: rating,
    already_seen: false,
    my_rating: nil )
end