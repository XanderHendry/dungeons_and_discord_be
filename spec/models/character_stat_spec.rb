require 'rails_helper'

RSpec.describe CharacterStat, type: :model do
  describe "relationships" do
    it {should belong_to :character}
  end
end
