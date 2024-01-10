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
    render status:200
  end
end
