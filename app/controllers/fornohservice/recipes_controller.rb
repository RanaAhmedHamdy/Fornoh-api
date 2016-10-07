class Fornohservice::RecipesController < ApplicationController
   before_action :init_recipe
  
  def index
    @data = @recipe.index
    render json: @data
  end

  # GET /links/1
  # GET /links/1.json
  def show
    @data = @recipe.read(params[:id])
    render json: @data
  end

  # GET /links/new
  def new
  end

  # GET /links/1/edit
  def edit
  end

  #{"name": "الكنافة", "photo": "photo/a.png", "difficulty": 1, "time": 120
  #, "servings":  1, "category_id": 1, "directions_attributes":
  #[{"title": "يييييييييييييييييييييييييييييييييييييييي", "photo": "a.pgn"}],
  #"ingredients_attributes": [{"food": "طماطم", "unit_id": 1, "quantity":1},
  #{"food": "خيار", "unit_id": 1, ,"quantity":2}]}
  def create
    @data = @recipe.create(recipe_params)
    render json: @data
  end

  # PATCH/PUT /links/1
  # PATCH/PUT /links/1.json
  def update
    @data = @recipe.update(params[:id], recipe_params)
    render json: @data
  end

  # DELETE /links/1
  # DELETE /links/1.json
  def destroy
    @data = @recipe.delete(params[:id])
    render json: @data
  end
  
  private 
    def init_recipe
      @recipe = RepoPool.get_repo("recipesdb")
    end

    def recipe_params
      params.permit(:name, :photo, :time, :difficulty, :servings, :category_id, 
        :directions_attributes => [:photo, :title], :ingredients_attributes =>
        [:food, :unit_id, :quantity])
    end
end
