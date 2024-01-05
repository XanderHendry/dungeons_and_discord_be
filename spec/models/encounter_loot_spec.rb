require 'rails_helper'

RSpec.describe EncounterLoot do
  describe "relationships" do
    it {should belong_to :encounter}
  end
end