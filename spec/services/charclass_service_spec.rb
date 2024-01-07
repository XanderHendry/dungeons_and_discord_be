require 'rails_helper'

RSpec.describe CharclassService do
  describe 'class methods' do
    before(:each) do
    end

    context '#conn' do
      it 'returns a Faraday connection' do
        conn = CharclassService.conn

        expect(conn).to be_a(Faraday::Connection)
      end
    end

    context '#get_url' do
      it 'returns a parsed response' do
        response = CharclassService.get_url('/api/classes')

        expect(response).to be_a(Hash)
        expect(response).to have_key(:results)
      end
    end

    context '#get_charclasses' do
      it 'returns all charclasses available from the api' do
        charclasses = CharclassService.get_charclasses[:results]

        expect(charclasses).to be_an(Array)
        expect(charclasses.first).to be_a(Hash)
        expect(charclasses.first).to have_key(:index)
        expect(charclasses.first).to have_key(:name)
        expect(charclasses.first).to have_key(:url)
      end
    end

    context '#get_charclass' do
      it 'returns a specific charclass' do
        charclass = CharclassService.get_charclass('barbarian')

        expect(charclass).to be_an(Hash)
        expect(charclass).to have_key(:index)
        expect(charclass[:index]).to eq('barbarian')
      end
    end
  end
end
