class GraphsController < ApplicationController

  def index
    @graphs = Graph.all
  end

  def show
    if Graph.exists?(params[:id])
      @graph = Graph.find(params[:id])
    else
      redirect_to graphs_path
    end
  end

  def api
    render json: GraphService.perform(params[:id])
  end

end
