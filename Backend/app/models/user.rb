class User < ActiveRecord::Base
  
    has_many :favorites
    has_many :pets, through: :favorites
  end