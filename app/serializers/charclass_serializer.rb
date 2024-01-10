class CharclassSerializer
  include JSONAPI::Serializer
  attributes :id, :index, :name, :hit_die, :proficiency_choices, :proficiencies, :saving_throws, :starting_equipment, :starting_equipment_options, :subclass
end
