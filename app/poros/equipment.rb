class Equipment
  attr_reader :id, :index, :name, :equipment

  def initialize(attributes)
    @id = nil
    @index = attributes[:equipment][:index]
    @name = attributes[:equipment][:name]
  end
end