class Character < ApplicationRecord
  has_many :game_characters
  has_many :games, through: :game_characters
  has_many :character_items, dependent: :destroy
  has_many :character_proficiencies, dependent: :destroy
  has_many :character_spells, dependent: :destroy
  has_many :character_features, dependent: :destroy
  has_one :character_currency, dependent: :destroy
  has_one :character_stat, dependent: :destroy
end