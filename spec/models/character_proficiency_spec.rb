require 'rails_helper'

RSpec.describe CharacterProficiency do
  describe "relationships" do
    it {should belong_to :character}
  end
end