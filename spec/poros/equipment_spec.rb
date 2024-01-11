require 'rails_helper'

RSpec.describe Equipment do
  it 'exists' do
    sword = Equipment.new({ index: 'sword', name: 'Sword'})
    expect(sword).to be_an(Equipment)
    expect(sword.id).to eq(nil)
    expect(sword.index).to eq('sword')
    expect(sword.name).to eq('Sword')

  end
end 