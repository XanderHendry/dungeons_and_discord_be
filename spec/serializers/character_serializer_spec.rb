require 'rails_helper'

RSpec.describe CharacterSerializer do
  it 'formats data for a Character object' do
    FactoryBot.create_list(:character, 3)
    serialized_response = CharacterSerializer.new(Character.first)

    output = JSON.parse(serialized_response.to_json, symbolize_names: true)

    expect(output).to have_key(:data)
    expect(output[:data]).to be_a(Hash)
    expect(output[:data]).to have_key(:id)
    expect(output[:data]).to have_key(:type)
    expect(output[:data]).to have_key(:attributes)
    expect(output[:data][:id]).to be_a(String)
    expect(output[:data][:type]).to be_a(String)
    expect(output[:data][:attributes]).to be_an(Hash)
    expect(output[:data][:attributes][:user_id]).to be_an(Integer)
    expect(output[:data][:attributes]).to_not have_key(:url)
    expect(output[:data][:attributes]).to have_key(:char_class)
    expect(output[:data][:attributes][:char_class]).to be_a(String)
    expect(output[:data][:attributes]).to have_key(:race)
    expect(output[:data][:attributes][:race]).to be_a(String)
    expect(output[:data][:attributes]).to have_key(:alignment)
    expect(output[:data][:attributes][:alignment]).to be_a(String)
    expect(output[:data][:attributes]).to have_key(:background)
    expect(output[:data][:attributes][:background]).to be_a(String)
    expect(output[:data][:attributes]).to have_key(:name)
    expect(output[:data][:attributes][:name]).to be_a(String)
    expect(output[:data][:attributes]).to have_key(:character_proficiencies)
    expect(output[:data][:attributes][:character_proficiencies]).to be_an(Array)
    expect(output[:data][:attributes]).to have_key(:character_items)
    expect(output[:data][:attributes][:character_items]).to be_an(Array)
  end
end