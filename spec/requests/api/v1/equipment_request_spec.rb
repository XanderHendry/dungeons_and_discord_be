require 'rails_helper'

describe "equipment requests for API" do
  it "sends a list of equipment by category", :vcr do

    get '/api/v1/equipment/martial-melee-weapons'
    expect(response).to be_successful

    charclass = JSON.parse(response.body, symbolize_names: true)
    expect(charclass[:data].first[:attributes][:name]).to eq("Battleaxe")
  end
end