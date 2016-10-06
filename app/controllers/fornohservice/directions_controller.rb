class Fornohservice::DirectionsController < ApplicationController
  before_action :init_directions

#{"recipe_id": 1, "title": "ss", "photo": "1.png"}
  def create
  	@data = @direction.create(direction_params)
    render json: @data
  end

#{"recipe_id": 1, "title": "ss", "photo": "1.png"}
  def update
  	@data = @direction.update(params[:id], direction_params)
    render json: @data
  end

  def destroy
  	@data = @direction.delete(params[:id])
    render json: @data
  end

  private 
  def init_directions
    @direction = RepoPool.get_repo("directionsdb")
  end

  def direction_params
    params.permit(:title, :photo, :recipe_id)
  end
end
