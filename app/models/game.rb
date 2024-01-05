class Game < ApplicationRecord
  has_many :game_characters
  has_many :characters, through: :game_characters
  has_many :encounters
  has_many :encounter_monsters, through: :encounters
  has_many :encounter_loot, through: :encounters
end
