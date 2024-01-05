require 'rails_helper'

RSpec.describe EncounterMonster do
  describe "relationships" do
    it {should belong_to :encounter}
  end
end