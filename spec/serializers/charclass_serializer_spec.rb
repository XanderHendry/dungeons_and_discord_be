require 'rails_helper'

RSpec.describe CharclassSerializer do
  it 'formats data for a Charclass object' do
    charclass = CharclassFacade.get_charclass("barbarian")
    output = CharclassSerializer.new(charclass).serializable_hash
    binding.pry
    expect(output).to have_key(:data)
    expect(output[:data]).to be_a(Hash)
    expect(output[:data]).to have_key(:id)
    expect(output[:data]).to have_key(:type)
    expect(output[:data]).to have_key(:attributes)
    expect(output[:data][:id]).to be(nil)
    expect(output[:data][:type]).to be_a(Symbol)
    expect(output[:data][:attributes]).to be_an(Hash)
    expect(output[:data][:attributes][:index]).to eq("barbarian")
    expect(output[:data][:attributes]).to_not have_key(:url)
    expect(output[:data][:attributes]).to have_key(:proficiency_choices)
    expect(output[:data][:attributes][:proficiency_choices]).to be_an(Array)
    expect(output[:data][:attributes]).to have_key(:proficiencies)
    expect(output[:data][:attributes][:proficiencies]).to be_an(Array)
    expect(output[:data][:attributes]).to have_key(:saving_throws)
    expect(output[:data][:attributes][:saving_throws]).to be_an(Array)
    expect(output[:data][:attributes]).to have_key(:starting_equipment)
    expect(output[:data][:attributes][:starting_equipment]).to be_an(Array)
    expect(output[:data][:attributes]).to have_key(:starting_equipment_options)
    expect(output[:data][:attributes]).to have_key(:subclass)
    expect(output[:data][:attributes][:starting_equipment_options]).to be_an(Array)
    expect(output[:data][:attributes][:subclass]).to be_an(Array)
  end
end