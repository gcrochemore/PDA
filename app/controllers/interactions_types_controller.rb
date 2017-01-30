class InteractionsTypesController < ApplicationController
  before_action :set_interactions_type, only: [:show, :edit, :update, :destroy]

  # GET /interactions_types
  # GET /interactions_types.json
  def index
    @interactions_types = InteractionsType.all
  end

  # GET /interactions_types/1
  # GET /interactions_types/1.json
  def show
  end

  # GET /interactions_types/new
  def new
    @interactions_type = InteractionsType.new
  end

  # GET /interactions_types/1/edit
  def edit
  end

  # POST /interactions_types
  # POST /interactions_types.json
  def create
    @interactions_type = InteractionsType.new(interactions_type_params)

    respond_to do |format|
      if @interactions_type.save
        format.html { redirect_to @interactions_type, notice: 'Interactions type was successfully created.' }
        format.json { render :show, status: :created, location: @interactions_type }
      else
        format.html { render :new }
        format.json { render json: @interactions_type.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /interactions_types/1
  # PATCH/PUT /interactions_types/1.json
  def update
    respond_to do |format|
      if @interactions_type.update(interactions_type_params)
        format.html { redirect_to @interactions_type, notice: 'Interactions type was successfully updated.' }
        format.json { render :show, status: :ok, location: @interactions_type }
      else
        format.html { render :edit }
        format.json { render json: @interactions_type.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /interactions_types/1
  # DELETE /interactions_types/1.json
  def destroy
    @interactions_type.destroy
    respond_to do |format|
      format.html { redirect_to interactions_types_url, notice: 'Interactions type was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_interactions_type
      @interactions_type = InteractionsType.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def interactions_type_params
      params.require(:interactions_type).permit(:name, :icon)
    end
end
