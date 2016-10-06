class Fornohservice::DirectionsController < ApplicationController
  before_action :init_directions

#{"recipe_id": 1, "title": "ss", "photo": "1.png"}
  def create
  	@data = @direction.create(params)
    render json: @data
  end

#{"recipe_id": 1, "title": "ss", "photo": "1.png", "id": 6}
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
    @direction = RepoPool.get_repo("directionsdb")
  end
end
