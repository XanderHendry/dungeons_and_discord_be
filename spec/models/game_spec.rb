require 'rails_helper'

RSpec.describe Game, type: :model do
  describe "relationships" do
    it {should have_many :game_characters}
    it {should have_many(:characters).through(:game_characters) }
    it {should have_many :encounters}
    it {should have_many(:encounter_monsters).through(:encounters) }
    it {should have_many(:encounter_loots).through(:encounters) }
  end
end
