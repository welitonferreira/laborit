class Api::BrandsController < ApplicationController
  before_action :authenticate_user!, except: [:index]
  before_action :set_brand, only: [:show, :update, :destroy]

  # GET /api/brands
  def index
    @brands = Brand.all

    render json: @brands
  end

  # GET /api/brands/1
  def show
    render json: @brand
  end

  # POST /api/brands
  def create
    @brand = Brand.new(brand_params)

    if @brand.save
      render json: @brand, status: :created, location: api_brand_url(@brand)
    else
      render json: @brand.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /api/brands/1
  def update
    if @brand.update(brand_params)
      render json: @brand
    else
      render json: @brand.errors, status: :unprocessable_entity
    end
  end

  # DELETE /api/brands/1
  def destroy
    @brand.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_brand
      @brand = Brand.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def brand_params
      params.require(:brand).permit(:name)
    end
end
