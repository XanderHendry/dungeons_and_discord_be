require 'rails_helper'

RSpec.describe CharacterFeature do
  describe "relationships" do
    it {should belong_to :character}
  end
end