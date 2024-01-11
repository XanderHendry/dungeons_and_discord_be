class Equipment
  attr_reader :id, :index, :name

  def initialize(attributes)
    @id = nil
    @index = attributes[:index]
    @name = attributes[:name]
  end
end