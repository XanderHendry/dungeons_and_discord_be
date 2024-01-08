class Api::V1::CharacterController < ApplicationController
  def index 
    Character.where(user_id: params[:uid])
  end

  def create 
    Character.create(character_params)
  end

  private

  def character_params
    params.require(:character).permit(:uid, :class)
  end
end
