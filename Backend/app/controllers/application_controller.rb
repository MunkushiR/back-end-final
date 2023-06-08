require 'sinatra/base'
require 'sinatra/activerecord'
require './app/models/user'
require './app/models/pets'
require './app/models/favorites'

class ApplicationController < Sinatra::Base
  configure do
    set :default_content_type, 'application/json'
  end
  before do
    response.headers['Access-Control-Allow-Origin'] = 'http://localhost:3000'
    response.headers['Access-Control-Allow-Methods'] = 'GET, POST, PUT, DELETE, OPTIONS'
    response.headers['Access-Control-Allow-Headers'] = 'accept, authorization, origin'
  end
  get '/' do
    "Welcome to your Petfinder application!"
  end
  # Routes for users
  get '/users' do
    users = User.all
    users.to_json
  end
  get '/users/:id' do |id|
    user = User.find(id)
    user.to_json
  end
  post '/users' do
    user = User.create(params)
    user.to_json
  end
  put '/users/:id' do |id|
    user = User.find(id)
    user.update(params)
    user.to_json
  end
  delete '/users/:id' do |id|
    user = User.find(id)
    user.destroy
    user.to_json
  end
  # Routes for pets
  get '/pets' do
    pets = Pet.all
    pets.to_json
  end
  get '/pets/:id' do |id|
    pet = Pet.find(id)
    pet.to_json
  end
  post '/pets' do
    pet = Pet.create(params)
    pet.to_json
  end
  put '/pets/:id' do |id|
    pet = Pet.find(id)
    pet.update(params)
    pet.to_json
  end
  delete '/pets/:id' do 
    pet = Pet.find(params[:id])
    pet.destroy
    pet.to_json
  end

end






