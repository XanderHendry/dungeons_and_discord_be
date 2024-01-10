require 'rails_helper'

RSpec.describe CharclassFacade do
  let (:facade) { CharclassFacade }

  describe "#get_charclasses", :vcr do
    it "returns an array of Charclass objects" do
      response = facade.get_charclasses

      expect(response).to be_an(Array)
      expect(response.first).to be_a(Charclass)
    end
  end

  describe "#get_charclasses", :vcr do
    it "returns a Charclass object" do
      response = facade.get_charclass("barbarian")

      expect(response).to be_a(Charclass)
      expect(response.name).to eq("Barbarian")
    end
  end
end