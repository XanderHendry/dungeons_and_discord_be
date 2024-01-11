class EquipmentService
  def self.conn
    Faraday.new(url: 'https://www.dnd5eapi.co')
  end
  
  def self.get_url(url)
    response = conn.get(url)
    JSON.parse(response.body, symbolize_names: true)
  end

  #get equipment by the 1 of the 39 categories provided in the api
  
  def self.get_equipment_by_category(category)
    get_url("/api/equipment-categories/#{category}")
  end
end