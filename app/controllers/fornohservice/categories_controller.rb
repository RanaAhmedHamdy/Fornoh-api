class Fornohservice::CategoriesController < ApplicationController

  before_action :init_category

  def index
    @data = @category.index
    render json: @data
  end

  # GET /links/1
  # GET /links/1.json
  def show
    @data = @category.read(params[:id])
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
  #{"id":1, "name": "fish"}
  def create
    @data = @category.create(categ_params)
    render json: @data
  end

  # PATCH/PUT /links/1
  # PATCH/PUT /links/1.json
  #{name": "fish"}
  def update
    @data = @category.update(params[:id], categ_params)
    render json: @data
  end

  # DELETE /links/1
  # DELETE /links/1.json
  def destroy
    @data = @category.delete(params[:id])
    render json: @data
  end

  private
  def init_category
    @category = RepoPool.get_repo("categoriesdb")
  end

  def categ_params
    params.permit(:name)
  end
end
