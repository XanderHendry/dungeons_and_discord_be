class Charclass
  attr_reader :id, :index, :name, :url

  def initialize(attributes)
    @id = nil
    @index = attributes[:index]
    @name = attributes[:name]
    @url = attributes[:url]
  end
end