class CharacterSerializer
  include JSONAPI::Serializer
  attributes :user_id, :char_class
end