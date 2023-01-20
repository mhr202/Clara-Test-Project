class GraphsController < ApplicationController
  def index
    GraphService.perform
  end
end
