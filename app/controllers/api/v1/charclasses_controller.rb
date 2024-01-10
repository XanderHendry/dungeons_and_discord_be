class Api::V1::CharclassesController < ApplicationController
  def index
    @classes = CharclassFacade.get_charclasses
  end

  def show
    @class = CharclassFacade.get_charclass(params[:index])
    render json: CharclassSerializer.new(@class), status: 200
  end

  def add_prof
    # this method needs refactoring, we aren't ensuring that incomplete characters won't be saved to the db. we can still end up with 7 shreks.
    character = Character.last
    class_details = CharclassFacade.get_charclass(character.char_class)
    class_details.proficiencies.each do |proficiency|
      character.character_proficiencies.create({proficiency_name: proficiency[:name]})
    end
    proficiencies = params[:proficiencies].each do |proficiency|
      character.character_proficiencies.create({ proficiency_name: proficiency})
    end
    render json: CharacterSerializer.new(character.character_proficiencies), status: 200
  end

  def add_items
    # this method needs refactoring, we aren't ensuring that incomplete characters won't be saved to the db. we can still end up with 7 shreks.
    character = Character.last
    class_details = CharclassFacade.get_charclass(character.char_class)
    class_details.starting_equipment.each do |equipment|
      character.character_items.create({item_name: equipment[:name]})
    end
    proficiencies = params[:starting_equipment_options].each do |equipment|
      character.character_proficiencies.create({ item_name: equipment[:name]})
    end
    render json: CharacterSerializer.new(character.character_items), status: 200
  end

  def add_stats
    character = Character.last
    class_details = CharclassFacade.get_charclass(character.char_class)
    character.character_stat.create({
      strength: params[:strength],
      dexterity: params[:dexterity],
      constitution: params[:constitution],
      intelligence: params[:intelligence],
      wisdom: params[:wisdom],
      charisma: params[:charisma],
      armor_class: params[:armor_class],
      max_hit_points: class_details.hit_die,
      speed: params[:speed],
    })
    render json: CharacterSerializer.new(character.character_stats), status: 200
  end
end
