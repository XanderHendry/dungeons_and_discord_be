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
    character = Character.find_by(id: params[:char_id])
    class_details = CharclassFacade.get_charclass(character.char_class)
    class_details.proficiencies.each do |proficiency|
      character.character_proficiencies.create({proficiency_name: proficiency[:name]})
    end
    proficiencies = params[:proficiencies].each do |proficiency|
      character.character_proficiencies.create({ proficiency_name: proficiency})
    end
    render json: CharacterSerializer.new(character.character_proficiencies), status: 201
  end

  def add_items
    # this method needs refactoring, we aren't ensuring that incomplete characters won't be saved to the db. we can still end up with 7 shreks.
    character = Character.find_by(id: params[:char_id])
    class_details = CharclassFacade.get_charclass(character.char_class)
    class_details.starting_equipment.each do |equipment|
      character.character_items.create({item_name: equipment[:equipment][:name]})
    end
    items = params[:starting_equipment_options].each do |equipment|
      character.character_items.create({ item_name: equipment})
    end
    render json: CharacterSerializer.new(character.character_items), status: 201
  end

  def add_stats
    character = Character.find_by(id: params[:char_id])
    class_details = CharclassFacade.get_charclass(character.char_class)
    CharacterStat.create({
      character_id: character.id,
      str: params[:charclass][:str].to_i,
      dex: params[:charclass][:dex].to_i,
      con: params[:charclass][:con].to_i,
      int: params[:charclass][:int].to_i,
      wis: params[:charclass][:wis].to_i,
      cha: params[:charclass][:cha].to_i,
      max_hit_point: class_details.hit_die.to_i
    })
    
    render json: CharacterSerializer.new(character.character_stat), status: 201
  end
end
