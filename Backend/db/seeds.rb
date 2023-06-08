require 'faker'
require_relative '../app/models/user'
require_relative '../app/models/pets'
require_relative '../app/models/favorites'

puts ":seedling: Seeding data..."

# Seed Users
5.times do
  User.create(
    username: Faker::Internet.username,
    email: Faker::Internet.email,
    password: Faker::Internet.password
  )
end

# Seed Pets
10.times do
  Pet.create(
    name: Faker::Creature::Dog.name,
    age: Faker::Number.between(from: 1, to: 10),
    breed: Faker::Creature::Dog.breed,
  
  )
end

# Seed Favorites (associate users with their favorite pets)


puts ":white_check_mark: Done seeding!"
