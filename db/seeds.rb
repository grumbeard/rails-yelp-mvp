require 'faker'
# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
puts "Destroying all restaurants/reviews..."
Restaurant.destroy_all

puts "Creating 10 restaurants..."
10.times do
  new_resto = Restaurant.create(
    name: "#{Faker::Lorem.word.capitalize} #{Faker::Food.ingredient.capitalize}",
    address: Faker::Address.street_address,
    phone_number: Faker::PhoneNumber.phone_number_with_country_code,
    category: ['chinese', 'italian', 'japanese', 'french', 'belgian'].sample
  )
  puts new_resto
  new_resto.save!
  puts "Creating 5 reviews for this restaurant"
  5.times do
    new_review = Review.create(
      content: Faker::Restaurant.review,
      rating: rand(0..5)
    )
    new_review.restaurant = new_resto
    puts new_review
    new_review.save!
  end
end
