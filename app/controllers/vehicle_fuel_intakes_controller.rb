class VehicleFuelIntakesController < ApplicationController
  authorize_resource
  before_action :set_vehicle_fuel_intake, only: [:show, :edit, :update, :destroy]
  # GET /vehicle_fuel_intakes
  def index
    @q = VehicleFuelIntake.ransack(params[:q])
    @vehicle_fuel_intakes = @q.result.page(params[:page])
  end
  # GET /vehicle_fuel_intakes/1
  def show
  end

  # GET /vehicle_fuel_intakes/new
  def new
    @vehicle_fuel_intake = VehicleFuelIntake.new
  end

  # GET /vehicle_fuel_intakes/1/edit
  def edit
  end

  # POST /vehicle_fuel_intakes
  def create
    @vehicle_fuel_intake = VehicleFuelIntake.new(vehicle_fuel_intake_params)

    if @vehicle_fuel_intake.save
      redirect_to @vehicle_fuel_intake, notice: 'Vehicle fuel intake was successfully created.'
    else
      render :new
    end
  end
  # PATCH/PUT /vehicle_fuel_intakes/1
  def update
    if @vehicle_fuel_intake.update(vehicle_fuel_intake_params)
      redirect_to @vehicle_fuel_intake, notice: 'Vehicle fuel intake was successfully updated.'
    else
      render :edit
    end
  end
  # DELETE /vehicle_fuel_intakes/1
  def destroy
    @vehicle_fuel_intake.destroy
    redirect_to vehicle_fuel_intakes_url, notice: 'Vehicle fuel intake was successfully destroyed.'
  end
  private
    # Use callbacks to share common setup or constraints between actions.
    def set_vehicle_fuel_intake
      @vehicle_fuel_intake = VehicleFuelIntake.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def vehicle_fuel_intake_params

      params.require(:vehicle_fuel_intake).permit(:vehicle_id, :date, :volume, :amount)

    end
end
