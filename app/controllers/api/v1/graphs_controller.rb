class Api::V1::GraphsController < ApplicationController

  #TODO - Create complete API & RESTFUL Routes

  def show
    render json: GraphService.perform(params[:id])
  end
end
