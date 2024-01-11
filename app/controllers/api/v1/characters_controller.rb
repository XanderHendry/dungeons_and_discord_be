class Api::V1::CharactersController < ApplicationController
  def index
    characters = Character.where(user_id: params[:user_id])
   
    render json: CharacterSerializer.new(characters)
  end

  def create
    new_character = Character.create(character_params)
    render json: CharacterSerializer.new(new_character), status: 200
  end

  private

  def character_params
    params.permit(:user_id, :char_class, :name, :race, :alignment, :subclass, :background, :level)
  end
end
