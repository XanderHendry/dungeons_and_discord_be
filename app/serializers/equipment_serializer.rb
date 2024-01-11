class EquipmentSerializer
  include JSONAPI::Serializer
  attributes :index, :name
end