class BeltLevelsController < ApplicationController
  before_action :set_belt_level, only: [:show, :edit, :update, :destroy]

  # GET /belt_levels
  # GET /belt_levels.json
  def index
    @belt_levels = BeltLevel.all
  end

  # GET /belt_levels/1
  # GET /belt_levels/1.json
  def show
  end

  # GET /belt_levels/new
  def new
    @belt_level = BeltLevel.new
  end

  # GET /belt_levels/1/edit
  def edit
  end

  # POST /belt_levels
  # POST /belt_levels.json
  def create
    @belt_level = BeltLevel.new(belt_level_params)

    respond_to do |format|
      if @belt_level.save
        format.html { redirect_to @belt_level, notice: 'Belt level was successfully created.' }
        format.json { render :show, status: :created, location: @belt_level }
      else
        format.html { render :new }
        format.json { render json: @belt_level.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /belt_levels/1
  # PATCH/PUT /belt_levels/1.json
  def update
    respond_to do |format|
      if @belt_level.update(belt_level_params)
        format.html { redirect_to @belt_level, notice: 'Belt level was successfully updated.' }
        format.json { render :show, status: :ok, location: @belt_level }
      else
        format.html { render :edit }
        format.json { render json: @belt_level.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /belt_levels/1
  # DELETE /belt_levels/1.json
  def destroy
    @belt_level.destroy
    respond_to do |format|
      format.html { redirect_to belt_levels_url, notice: 'Belt level was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_belt_level
      @belt_level = BeltLevel.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def belt_level_params
      params.require(:belt_level).permit(:name)
    end
end
