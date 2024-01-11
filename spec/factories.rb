FactoryBot.define do
  factory :character do
    user_id { Faker::Number.number(digits: 1) }
    name { Faker::Games::DnD.name }
    char_class { Faker::Games::DnD.klass }
    race { Faker::Games::DnD.race }
    alignment { Faker::Games::DnD.alignment }
    background { Faker::Games::DnD.background }
  end
end