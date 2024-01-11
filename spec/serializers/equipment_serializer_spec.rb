require 'rails_helper'

RSpec.describe EquipmentSerializer, :vcr do
  it 'formats data for a Equipment object', :vcr do
    equipment_list = EquipmentFacade.get_equipment_by_category("martial-melee-weapons")
    output = EquipmentSerializer.new(equipment_list).serializable_hash
    expect(output).to have_key(:data)
    expect(output[:data]).to be_an(Array)
    expect(output[:data].first).to have_key(:id)
    expect(output[:data].first).to have_key(:type)
    expect(output[:data].first).to have_key(:attributes)
    expect(output[:data].first[:attributes]).to have_key(:index)
    expect(output[:data].first[:attributes]).to have_key(:name)
  end
end