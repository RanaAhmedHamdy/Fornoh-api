class Fornohservice::DirectionsController < ApplicationController
  before_action :init_directions

  def create
  	@data = @direction.create(params)
    render json: @data
  end

  def update
  	@data = @direction.update(params)
    render json: @data
  end

  def destroy
  	@data = @direction.delete(params[:id])
    render json: @data
  end

  private 
  def init_directions
    @direction = DirectionsRepo.new
  end
end
