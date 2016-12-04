class UpgradesController < ApplicationController
  before_action :set_upgrade, only: [:show, :edit, :update, :destroy]

  # GET /upgrades
  # GET /upgrades.json
  def index
    @upgrades = Upgrade.all
  end

  # GET /upgrades/1
  # GET /upgrades/1.json
  def show
  end

  # GET /upgrades/new
  def new
    @upgrade = Upgrade.new
  end

  # GET /upgrades/1/edit
  def edit
  end

  # POST /upgrades
  # POST /upgrades.json
  def create
    @upgrade = Upgrade.new(upgrade_params)

    respond_to do |format|
      if @upgrade.save
        format.html { redirect_to @upgrade, notice: 'Upgrade was successfully created.' }
        format.json { render :show, status: :created, location: @upgrade }
      else
        format.html { render :new }
        format.json { render json: @upgrade.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /upgrades/1
  # PATCH/PUT /upgrades/1.json
  def update
    respond_to do |format|
      if @upgrade.update(upgrade_params)
        format.html { redirect_to @upgrade, notice: 'Upgrade was successfully updated.' }
        format.json { render :show, status: :ok, location: @upgrade }
      else
        format.html { render :edit }
        format.json { render json: @upgrade.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /upgrades/1
  # DELETE /upgrades/1.json
  def destroy
    @upgrade.destroy
    respond_to do |format|
      format.html { redirect_to upgrades_url, notice: 'Upgrade was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_upgrade
      @upgrade = Upgrade.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def upgrade_params
      params.require(:upgrade).permit(:student_id, :type, :start_date, :term)
    end
end
