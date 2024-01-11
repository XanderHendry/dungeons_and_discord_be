# require 'rails_helper'

# describe "class requests for API" do
#   it "sends a list of classes", :vcr do


#     get '/api/v1/charclasses/barbarian'
#     expect(response).to be_successful

#     charclass = JSON.parse(response.body, symbolize_names: true)
#     expect(charclass[:data][:attributes][:name]).to eq("Barbarian")
#   end

#   # xit 'lets you create models based on character creation choices' do
    
#   # end
# end