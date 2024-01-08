class Api::V1::CharclassesController < ApplicationController
  def index
    @classes = CharclassFacade.get_charclasses
  end

  def show
    @class = CharclassFacade.get_charclass(params[:index])
  end
end
