require "rails_helper"

RSpec.describe "Characters API", :vcr do
  it "returns a list of all characters" do
    user1_chars = create_list(:character, 3, user_id: 1)

    get "/api/v1/characters/?user_id=1"
    
    expect(response).to be_successful
    expect(response.status).to eq(200)
    parsed_response = JSON.parse(response.body, symbolize_names: true)

    expect(parsed_response).to have_key(:data)
    chars = parsed_response[:data]

    expect(chars.count).to eq(3)
    chars.each do |char|
      expect(char).to have_key(:id)
      expect(char[:id]).to be_a(String)

      expect(char).to have_key(:type)
      expect(char[:type]).to eq("character")

      expect(char).to have_key(:attributes)
      expect(char[:attributes]).to be_a(Hash)

      expect(char[:attributes]).to have_key(:name)
      expect(char[:attributes][:name]).to be_a(String)

      expect(char[:attributes]).to have_key(:user_id)
      expect(char[:attributes][:user_id]).to be_a(Integer)

      expect(char[:attributes]).to have_key(:char_class)
      expect(char[:attributes][:char_class]).to be_a(String)
      
      expect(char[:attributes]).to have_key(:race)
      expect(char[:attributes][:race]).to be_a(String)
      
      expect(char[:attributes]).to have_key(:alignment)
      expect(char[:attributes][:alignment]).to be_a(String)
      
      expect(char[:attributes]).to have_key(:background)
      expect(char[:attributes][:background]).to be_a(String)

      expect(char[:attributes]).to have_key(:character_proficiencies)
      expect(char[:attributes][:character_proficiencies]).to be_an(Array)
      
      expect(char[:attributes]).to have_key(:character_proficiencies)
      expect(char[:attributes][:character_proficiencies]).to be_an(Array)
    # require "pry" ; binding.pry
    end
  end
end