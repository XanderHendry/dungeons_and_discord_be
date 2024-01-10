class CharclassFacade
  def self.get_charclasses
    json_response = CharclassService.get_charclasses
    classes = json_response[:results].map do |result|
      Charclass.new(result)
    end
  end

  def self.get_charclass(charclass)
    json_response = CharclassService.get_charclass(charclass)
    binding.pry
    Charclass.new(json_response)
  end
end