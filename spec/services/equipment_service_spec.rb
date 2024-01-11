require 'rails_helper'

RSpec.describe EquipmentService do
  describe 'class methods', :vcr do
    # before(:each) do
    # end

    context '#conn' do
      it 'returns a Faraday connection' do
        conn = EquipmentService.conn

        expect(conn).to be_a(Faraday::Connection)
      end
    end

    context '#get_url' do
      it 'returns a parsed response' do
        response = EquipmentService.get_url('/api/equipment')

        expect(response).to be_a(Hash)
        expect(response).to have_key(:results)
      end
    end

    context '#get_equipment_by_category(category)' do
      it 'returns all items in the given category, api' do
        equipment = EquipmentService.get_equipment_by_category('martial-melee-weapons')
        expect(equipment).to be_a(Hash)
        expect(equipment).to have_key(:index)
        expect(equipment).to have_key(:name)
        expect(equipment).to have_key(:equipment)
      end
    end
  end
end
