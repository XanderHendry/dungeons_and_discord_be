require 'rails_helper'

RSpec.describe Encounter, type: :model do
  describe "relationships" do
    it {should belong_to :game}
    it {should have_many :encounter_loots}
    it {should have_many :encounter_monsters}
  end
end
