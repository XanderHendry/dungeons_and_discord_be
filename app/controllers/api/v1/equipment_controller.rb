class Api::V1::CharactersController < ApplicationController
  def index
    equipment_list = EquipmentFacade.get_equipment_by_category(params[:id])
    render json: EquipmentSerializer.new(equipment_list), status: 200
  end
end