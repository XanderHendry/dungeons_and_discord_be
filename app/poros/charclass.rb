class Charclass
  attr_reader :id, :index, :name, :url, :hit_die, :proficiency_choices, :proficiencies, :saving_throws, :starting_equipment, :starting_equipment_options, :subclass

  def initialize(attributes)
    @id = nil
    @index = attributes[:index]
    @name = attributes[:name]
    @url = attributes[:url]
    @hit_die = attributes[:hit_die]
    @proficiency_choices = attributes[:proficiency_choices]
    @proficiencies = attributes[:proficiencies]
    @saving_throws = attributes[:saving_throws]
    @starting_equipment = attributes[:starting_equipment]
    @starting_equipment_options = attributes[:starting_equipment_options]
    @subclass = attributes[:subclasses]
  end
end