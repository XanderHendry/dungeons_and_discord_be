class Api::V1::CharclassesController < ApplicationController
  def index
    render json: Charclass.all
  end
end
