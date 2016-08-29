class Fornohservice::IngredientsController < ApplicationController
  before_action :init_ingredients

  #{"recipe_id": 1, "food_id": 1, "unit_id": 1, "id": 1}
  def create
  	@data = @ingredient.create(params)
    render json: @data
  end

  #{"recipe_id": 1, "food_id": 1, "unit_id": 1, "id": 1}
  def update
  	@data = @ingredient.update(params)
    render json: @data
  end

  def destroy
  	@data = @ingredient.delete(params[:id])
    render json: @data
  end

  private 
  def init_ingredients
    @ingredient = IngredientsRepo.new
  end
end
