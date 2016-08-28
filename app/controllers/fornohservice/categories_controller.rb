class Fornohservice::CategoriesController < ApplicationController

  before_action :init_category
  
  def index
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

  private def init_category
    @category = CategoriesRepo.new
  end
end

