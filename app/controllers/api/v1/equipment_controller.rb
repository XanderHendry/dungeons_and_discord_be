class Api::V1::EquipmentController < ApplicationController
  def index
    equipment_list = EquipmentFacade.get_equipment_by_category(params[:category])
    render json: EquipmentSerializer.new(equipment_list), status: 200
  end
end