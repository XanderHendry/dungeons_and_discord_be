class EquipmentFacade
  def self.get_equipment_by_category(category)
    json_response = EquipmentService.get_equipment(category)
    equipment = json_response[:results].map do |result|
      Equipment.new(result)
    end
  end
end