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

  # POST /links
  # POST /links.json
  def create
  end

  # PATCH/PUT /links/1
  # PATCH/PUT /links/1.json
  def update
  end

  # DELETE /links/1
  # DELETE /links/1.json
  def destroy
  end
  
  private def init_recipe
    @recipe = RecipesRepo.new
  end
end
