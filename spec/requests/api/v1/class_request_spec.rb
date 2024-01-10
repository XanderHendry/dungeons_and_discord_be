require 'rails_helper'

describe "class requests for API" do
  it "sends a list of classes" do
    Charclass.create(index: "test", name: "testing", url: "testing.com")
    Charclass.create(index: "test3", name: "testing2", url: "testing2.com")
    Charclass.create(index: "test2", name: "testing3", url: "testing3.com")
    Charclass.create(index: "test4", name: "testing4", url: "testing4.com")

    get '/api/v1/charclasses'

    expect(response).to be_successful

    classes = JSON.parse(response.body, symbolize_names: true)
    require 'pry'; binding.pry

    classes.each do |c|
      expect(c).to have_key(:id)
      expect(c[:id]).to be_an(Integer)

      expect(c).to have_key(:index)
      expect(c[:index]).to be_a(String)

      expect(c).to have_key(:name)
      expect(c[:name]).to be_a(String)

      expect(c).to have_key(:url)
      expect(c[:url]).to be_a(String)

      expect(c).to have_key(:created_at)
      expect(c).to have_key(:updated_at)
    end
  end
end