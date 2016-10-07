class Fornohservice::IngredientsController < ApplicationController
  before_action :init_ingredients

  #{"recipe_id": 1, "food": "tomato", "unit_id": 1, "quantity": 2}
  def create
  	@data = @ingredient.create(ingredient_params)
    render json: @data
  end

  #{"recipe_id": 1, "food": "tomato", "unit_id": 1, "quantity": 2, "id": 1}
  def update
  	@data = @ingredient.update(params[:id], ingredient_params)
    render json: @data
  end

  def destroy
  	@data = @ingredient.delete(params[:id])
    render json: @data
  end

  private 
  def init_ingredients
    @ingredient = RepoPool.get_repo("ingredientsdb")
  end

  def ingredient_params
    params.permit(:food, :unit_id, :recipe_id, :quantity)
  end
end
