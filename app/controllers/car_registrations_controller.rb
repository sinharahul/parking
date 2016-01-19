class CarRegistrationsController < ApplicationController
  before_action :set_car_registration, only: [:show, :edit, :update, :destroy]

  # GET /car_registrations
  # GET /car_registrations.json
  def index
    @car_registrations = CarRegistration.all
  end

  # GET /car_registrations/1
  # GET /car_registrations/1.json
  def show
   
  end

  # GET /car_registrations/new
  def new
    @car_registration = CarRegistration.new
  end

  # GET /car_registrations/1/edit
  def edit
  end

  # POST /car_registrations
  # POST /car_registrations.json
  def create
    @car_registration = CarRegistration.new(car_registration_params)

    respond_to do |format|
      if @car_registration.save
        format.html { redirect_to @car_registration, notice: 'Car registration was successfully created.' }
        format.json { render :show, status: :created, location: @car_registration }
      else
        format.html { render :new }
        format.json { render json: @car_registration.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /car_registrations/1
  # PATCH/PUT /car_registrations/1.json
  def update
    respond_to do |format|
      if @car_registration.update(car_registration_params)
        format.html { redirect_to @car_registration, notice: 'Car registration was successfully updated.' }
        format.json { render :show, status: :ok, location: @car_registration }
      else
        format.html { render :edit }
        format.json { render json: @car_registration.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /car_registrations/1
  # DELETE /car_registrations/1.json
  def destroy
    @car_registration.destroy
    respond_to do |format|
      format.html { redirect_to car_registrations_url, notice: 'Car registration was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_car_registration
      @car_registration = CarRegistration.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def car_registration_params
      params.require(:car_registration).permit(:owner, :license, :month)
    end
end
