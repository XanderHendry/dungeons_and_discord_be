class Encounter < ApplicationRecord
  belongs_to :game
  has_many :encounter_monsters
  has_many :encounter_loots
end
