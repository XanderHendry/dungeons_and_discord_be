class CharclassService
  def self.conn
    Faraday.new(url: 'https://www.dnd5eapi.co')
  end
  
  def self.get_url(url)
    response = conn.get(url)
    JSON.parse(response.body, symbolize_names: true)
  end

  #for character creation, displaying all classes
  def self.get_charclasses
    get_url("/api/classes")
  end

  #getting the class of your character (That has already been created)
  def self.get_charclass(charclass)
    get_url("/api/classes/#{charclass}")
  end
end