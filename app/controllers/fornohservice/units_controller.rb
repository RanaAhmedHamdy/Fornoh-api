class Fornohservice::UnitsController < ApplicationController

  before_action :init_unit

  def index
    @data = @unit.index
    render json: @data
  end

  # GET /links/1
  # GET /links/1.json
  def show
    @data = @unit.read(params[:id])
    render json: @data
  end

  #{"name": "شاى كبيرة" }
  def create
    @data = @unit.create(unit_params)
    render json: @data
  end

  # PATCH/PUT /links/1
  # PATCH/PUT /links/1.json
  #{"name": "شاى كبيرة" }
  def update
    @data = @unit.update(params[:id], unit_params)
    render json: @data
  end

  # DELETE /links/1
  # DELETE /links/1.json
  def destroy
    @data = @unit.delete(params[:id])
    render json: @data
  end

  private
  def init_unit
    @unit = RepoPool.get_repo("unitsdb")
  end

  def unit_params
    params.permit(:name)
  end
end
