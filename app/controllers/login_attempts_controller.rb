class LoginAttemptsController < ApplicationController
  before_action :set_login_attempt, only: [:show, :edit, :update, :destroy]

  # GET /login_attempts
  # GET /login_attempts.json
  def index
    @login_attempts = LoginAttempt.all
  end

  # GET /login_attempts/1
  # GET /login_attempts/1.json
  def show
  end

  # GET /login_attempts/new
  def new
    @login_attempt = LoginAttempt.new
  end

  # GET /login_attempts/1/edit
  def edit
  end

  # POST /login_attempts
  # POST /login_attempts.json
  def create
    @login_attempt = LoginAttempt.new(login_attempt_params)

    respond_to do |format|
      if @login_attempt.save
        format.html { redirect_to @login_attempt, notice: 'Login attempt was successfully created.' }
        format.json { render :show, status: :created, location: @login_attempt }
      else
        format.html { render :new }
        format.json { render json: @login_attempt.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /login_attempts/1
  # PATCH/PUT /login_attempts/1.json
  def update
    respond_to do |format|
      if @login_attempt.update(login_attempt_params)
        format.html { redirect_to @login_attempt, notice: 'Login attempt was successfully updated.' }
        format.json { render :show, status: :ok, location: @login_attempt }
      else
        format.html { render :edit }
        format.json { render json: @login_attempt.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /login_attempts/1
  # DELETE /login_attempts/1.json
  def destroy
    @login_attempt.destroy
    respond_to do |format|
      format.html { redirect_to login_attempts_url, notice: 'Login attempt was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_login_attempt
      @login_attempt = LoginAttempt.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def login_attempt_params
      params.require(:login_attempt).permit(:ip_address, :is_successful, :user_id)
    end
end
