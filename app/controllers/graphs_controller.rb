class GraphsController < ApplicationController

  def index
    @graphs = Graph.all
  end

  def show
    @graph = Graph.find(params[:id])
  end

  def api
    puts params[:id]
    render json: GraphService.perform
  end

end
