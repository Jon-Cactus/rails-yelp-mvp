# This file should ensure the existence of records required to run the application in every environment (production,
# development, test). The code here should be idempotent so that it can be executed at any point in every environment.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Example:
#
#   ["Action", "Comedy", "Drama", "Horror"].each do |genre_name|
#     MovieGenre.find_or_create_by!(name: genre_name)
#   end
CATEGORIES = ["chinese", "italian", "japanese", "french", "belgian"]

10.times do
  restaurant_name = Faker::Restaurant.unique.name
  restaurant_address = Faker::Address.city
  restaurant_category = CATEGORIES.sample
  Restaurant.create!(
    name: restaurant_name,
    address: restaurant_address,
    category: restaurant_category
  )
end
