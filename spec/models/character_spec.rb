require 'rails_helper'

RSpec.describe Character, type: :model do
  it {should have_many :game_characters}
  it { should have_many(:games).through(:game_characters) }
  it {should have_many :character_items}
  it {should have_many :character_proficiencies}
  it {should have_many :character_spells}
  it {should have_many :character_features}
end
