class Character < ApplicationRecord
  has_many :game_characters
  has_many :games, through: :game_characters
  has_many :character_items
  has_many :character_proficiencies
  has_many :character_spells
  has_many :character_features
end