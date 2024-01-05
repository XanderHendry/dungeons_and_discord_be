require 'rails_helper'

RSpec.describe GameCharacter do
  describe "relationships" do
    it {should belong_to :character}
    it {should belong_to :game}
  end
end