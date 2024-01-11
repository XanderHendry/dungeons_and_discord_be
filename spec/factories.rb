FactoryBot.define do
  factory :character do
    name { "#{Faker::Games::DnD.name} Market" }
  end
end