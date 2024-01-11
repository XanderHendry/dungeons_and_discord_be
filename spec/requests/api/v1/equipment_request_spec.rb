require 'rails_helper'

describe "equipment requests for API" do
  it "sends a list of equipment by category", :vcr do
    # Charclass.create(index: "test", name: "testing", url: "testing.com")
    # Charclass.create(index: "test3", name: "testing2", url: "testing2.com")
    # Charclass.create(index: "test2", name: "testing3", url: "testing3.com")
    # Charclass.create(index: "test4", name: "testing4", url: "testing4.com")

    get '/api/v1/equipment/martial-melee-weapons'
    expect(response).to be_successful

    charclass = JSON.parse(response.body, symbolize_names: true)
    expect(charclass[:data].first[:attributes][:name]).to eq("Battleaxe")
  end
end