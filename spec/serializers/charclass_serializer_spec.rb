require 'rails_helper'

RSpec.describe CharclassSerializer do
  it 'formats data for a Charclass object' do
    charclass = CharclassFacade.get_charclass("barbarian")
    output = CharclassSerializer.new(charclass).serializable_hash
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
  end
end