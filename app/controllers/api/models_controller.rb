class Api::ModelsController < ApplicationController
   before_action :set_model, only: [:show, :update, :destroy]

  # GET /api/models
  def index
    @models = Model.all

    render json: @models
  end

  # GET /api/models/1
  def show
    render json: @model
  end

  # POST /api/models
  def create
    @model = Model.new(model_params)

    if @model.save
      render json: @model, status: :created, location: api_model_url(@model)
    else
      render json: @model.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /api/models/1
  def update
    if @model.update(model_params)
      render json: @model
    else
      render json: @model.errors, status: :unprocessable_entity
    end
  end

  # DELETE /api/models/1
  def destroy
    @model.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_model
      @model = Model.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def model_params
      params.require(:model).permit(:name, :brand_id)
    end
end
