class VehicleKilometricStatementsController < ApplicationController
  before_action :set_vehicle_kilometric_statement, only: [:show, :edit, :update, :destroy]

  # GET /vehicle_kilometric_statements
  # GET /vehicle_kilometric_statements.json
  def index
    @vehicle_kilometric_statements = VehicleKilometricStatement.all
  end

  # GET /vehicle_kilometric_statements/1
  # GET /vehicle_kilometric_statements/1.json
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
  # POST /vehicle_kilometric_statements.json
  def create
    @vehicle_kilometric_statement = VehicleKilometricStatement.new(vehicle_kilometric_statement_params)

    respond_to do |format|
      if @vehicle_kilometric_statement.save
        format.html { redirect_to @vehicle_kilometric_statement, notice: 'Vehicle kilometric statement was successfully created.' }
        format.json { render :show, status: :created, location: @vehicle_kilometric_statement }
      else
        format.html { render :new }
        format.json { render json: @vehicle_kilometric_statement.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /vehicle_kilometric_statements/1
  # PATCH/PUT /vehicle_kilometric_statements/1.json
  def update
    respond_to do |format|
      if @vehicle_kilometric_statement.update(vehicle_kilometric_statement_params)
        format.html { redirect_to @vehicle_kilometric_statement, notice: 'Vehicle kilometric statement was successfully updated.' }
        format.json { render :show, status: :ok, location: @vehicle_kilometric_statement }
      else
        format.html { render :edit }
        format.json { render json: @vehicle_kilometric_statement.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /vehicle_kilometric_statements/1
  # DELETE /vehicle_kilometric_statements/1.json
  def destroy
    @vehicle_kilometric_statement.destroy
    respond_to do |format|
      format.html { redirect_to vehicle_kilometric_statements_url, notice: 'Vehicle kilometric statement was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_vehicle_kilometric_statement
      @vehicle_kilometric_statement = VehicleKilometricStatement.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def vehicle_kilometric_statement_params
      params.require(:vehicle_kilometric_statement).permit(:vehicle_id, :date, :mileage, :use_duration)
    end
end
