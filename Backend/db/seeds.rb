require 'sinatra/activerecord'
require_relative 'models/pet'  # Assuming you have a 'Pet' model

# Establish database connection
configure :development do
  set :database, 'sqlite3:db/database.db'
end

# Seed data
Pet.create(
  name: 'peanut',
  description: 'Peanut is about 1 year old female chi weenie. Super sweet Snuggle bug. Loves to play with toys and other dogs.',
  breeds: 'chihuahua',
  type: 'dog',
  species: 'Mammal',
  contact: 'iperescure@gmail.com',
  photos: 'fluffy.jpg',
  due: nil,
  status: 0
)

Pet.create(
  name: 'Fluffy',
  description: 'Adorable cat',
  breeds: 'Persian',
  type: 'Cat',
  species: 'Mammal',
  contact: '123-456-7890',
  photos: 'fluffy.jpg',
  due: nil,
  status: 0
)

# Add more seed data as needed
