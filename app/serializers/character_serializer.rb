class CharacterSerializer
  include JSONAPI::Serializer
  attributes :user_id, :char_class, :race, :alignment, :background, :name, :character_proficiencies, :character_items
end
