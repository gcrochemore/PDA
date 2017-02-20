

class VehicleKilometricStatementsController < ApplicationController
  authorize_resource
  before_action :set_vehicle_kilometric_statement, only: [:show, :edit, :update, :destroy]
  # GET /vehicle_kilometric_statements
  def index
    @q = VehicleKilometricStatement.ransack(params[:q])
    @vehicle_kilometric_statements = @q.result.page(params[:page])
  end
  # GET /vehicle_kilometric_statements/1
  def show
  end

  # GET /vehicle_kilometric_statements/new
  def new
    @vehicle_kilometric_statement = VehicleKilometricStatement.new
  end

  # GET /vehicle_kilometric_statements/1/edit
  def edit
  end

  # POST /vehicle_kilometric_statements
  def create
    @vehicle_kilometric_statement = VehicleKilometricStatement.new(vehicle_kilometric_statement_params)

    if @vehicle_kilometric_statement.save
      redirect_to @vehicle_kilometric_statement, notice: 'Vehicle kilometric statement was successfully created.'
    else
      render :new
    end
  end
  # PATCH/PUT /vehicle_kilometric_statements/1
  def update
    if @vehicle_kilometric_statement.update(vehicle_kilometric_statement_params)
      redirect_to @vehicle_kilometric_statement, notice: 'Vehicle kilometric statement was successfully updated.'
    else
      render :edit
    end
  end
  # DELETE /vehicle_kilometric_statements/1
  def destroy
    @vehicle_kilometric_statement.destroy
    redirect_to vehicle_kilometric_statements_url, notice: 'Vehicle kilometric statement was successfully destroyed.'
  end
  private
    # Use callbacks to share common setup or constraints between actions.
    def set_vehicle_kilometric_statement
      @vehicle_kilometric_statement = VehicleKilometricStatement.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def vehicle_kilometric_statement_params

      params.require(:vehicle_kilometric_statement).permit(:vehicle_id, :date, :mileage, :use_duration)

    end
end
