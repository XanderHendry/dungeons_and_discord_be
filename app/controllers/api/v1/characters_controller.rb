class Api::V1::CharactersController < ApplicationController
  def index
    characters = Character.where(user_id: params[:user_id])
   
    render json: CharacterSerializer.new(characters)
  end

  def create
    new_character = Character.create(character_params)
    render json: CharacterSerializer.new(new_character), status: 201
  end

  def show
    character = Character.find_by(id: params[:id])
    render json: CharacterSerializer.new(character), status: 200
  end

  def destroy
    character = Character.find(params[:id])
    if !character.nil?
      character.character_stat.destroy
      character.character_items.delete_all
      character.character_proficiencies.delete_all
      character.destroy
      render json: CharacterSerializer.new(character), status: :no_content
      else
      #  render json: ErrorSerializer.new(ErrorMessage.new("No MarketVendor with market_id=#{params[:market_id]} AND vendor_id=#{params[:vendor_id]} exists", 404)).serialize_json, status: :not_found
      end
  end

  private

  def character_params
    params.permit(:user_id, :char_class, :name, :race, :alignment, :subclass, :background, :level)
  end
end
