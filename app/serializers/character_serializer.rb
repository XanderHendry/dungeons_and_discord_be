class CharacterSerializer
  include JSONAPI::Serializer
  attributes :id, :user_id, :char_class, :race, :alignment, :background, :name, :character_proficiencies, :character_items, :character_stat
end
