class CharactorsController < ApplicationController
  before_action :set_charactor, only: [:show, :update, :destroy]

  # GET /charactors
  def index
    @charactors = Charactor.all

    render json: @charactors
  end

  # GET /charactors/1
  def show
    render json: @charactor
  end

  # POST /charactors
  def create
    @charactor = Charactor.new(charactor_params)

    if @charactor.save
      render json: @charactor, status: :created, location: @charactor
    else
      render json: @charactor.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /charactors/1
  def update
    if @charactor.update(charactor_params)
      render json: @charactor
    else
      render json: @charactor.errors, status: :unprocessable_entity
    end
  end

  # DELETE /charactors/1
  def destroy
    @charactor.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_charactor
      @charactor = Charactor.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def charactor_params
      params.require(:charactor).permit(:name, :clan_id, :occupation_id, :fighting_power, :user_id)
    end
end
