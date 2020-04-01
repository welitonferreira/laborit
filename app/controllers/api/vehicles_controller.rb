class Api::VehiclesController < ApplicationController
    before_action :set_vehicle, only: [:show, :update, :destroy]

  # GET /api/vehicles
  def index
    @vehicles = Vehicle.all

    render json: @vehicles
  end

  # GET /api/vehicles/1
  def show
    render json: @vehicle
  end

  # POST /api/models
  def create
    @vehicle = Vehicle.new(vehicle_params)

    if @vehicle.save
      render json: @vehicle, status: :created, location: api_vehicle_url(@vehicle)
    else
      render json: @vehicle.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /api/vehicles/1
  def update
    if @vehicle.update(vehicle_params)
      render json: @vehicle
    else
      render json: @vehicle.errors, status: :unprocessable_entity
    end
  end

  # DELETE /api/vehicles/1
  def destroy
    @vehicle.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_vehicle
      @vehicle = Vehicle.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def vehicle_params
      params.require(:vehicle).permit(:value, :brand_id, :model_id, :yearModel, :fuel)
    end
end
