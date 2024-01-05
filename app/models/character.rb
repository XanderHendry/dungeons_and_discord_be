class Character < ApplicationRecord
  has_many :game_characters
  has_many :games, through: :game_characters
end