require 'rails_helper'

RSpec.describe EquipmentFacade do
  let (:facade) { EquipmentFacade }

  describe "#get_equipment", :vcr do
    it "returns an array of Equipment objects, by one of the categories supplied by the dnd5e api" do
      response = facade.get_equipment_by_category('martial-melee-weapons')
      expect(response).to be_an(Array)
      expect(response.first).to be_a(Equipment)
    end
  end
end