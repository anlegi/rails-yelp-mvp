# This file should ensure the existence of records required to run the application in every environment (production,
# development, test). The code here should be idempotent so that it can be executed at any point in every environment.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Example:
#
#   ["Action", "Comedy", "Drama", "Horror"].each do |genre_name|
#     MovieGenre.find_or_create_by!(name: genre_name)
#   end
restaurants_attributes = [
  { name: "Chez Margot", address: "123 Rue de Paris, Paris", phone_number: "0123456789", category: "french" },
  { name: "La Trattoria", address: "456 Via Roma, Rome", phone_number: "0123456790", category: "italian" },
  { name: "Sushi Place", address: "789 Nishi Shinjuku, Tokyo", phone_number: "0123456791", category: "japanese" },
  { name: "Dragon Wok", address: "1010 East Nanjing Road, Shanghai", phone_number: "0123456792", category: "chinese" },
  { name: "Brussels Sprouts", address: "1313 Rue des Bouchers, Brussels", phone_number: "0123456793", category: "belgian" }
]

restaurants_attributes.each do |attributes|
  Restaurant.find_or_create_by!(attributes)
end

puts 'Finished seeding the database with restaurants!'
