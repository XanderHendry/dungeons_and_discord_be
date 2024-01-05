require 'rails_helper'

RSpec.describe CharacterCurrency do
  describe "relationships" do
    it {should belong_to :character}
  end
end