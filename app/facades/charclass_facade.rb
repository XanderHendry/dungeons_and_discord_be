class CharclassFacade
  def self.get_charclasses
    #json_response returns a hash of :count and :results
    json_response = CharclassService.get_charclasses
    #json_response[:results] is an array of hashes of classes (:index, :name, :url)
    #classes now returns an array of Class objects
    classes = json_response[:results].map do |result|
      Charclass.create(result)
    end
  end

  def self.get_levels(charclass)
    json_response = CharclassService.get_levels(charclass)
  end
end