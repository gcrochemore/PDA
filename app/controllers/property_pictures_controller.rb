class PropertyPicturesController < ApplicationController
  before_action :set_property_picture, only: [:show, :edit, :update, :destroy]

  # GET /property_pictures
  # GET /property_pictures.json
  def index
    @property_pictures = PropertyPicture.all
  end

  # GET /property_pictures/1
  # GET /property_pictures/1.json
  def show
  end

  # GET /property_pictures/new
  def new
    @property_picture = PropertyPicture.new
  end

  # GET /property_pictures/1/edit
  def edit
  end

  # POST /property_pictures
  # POST /property_pictures.json
  def create
    @property_picture = PropertyPicture.new(property_picture_params)

    respond_to do |format|
      if @property_picture.save
        format.html { redirect_to @property_picture, notice: 'Property picture was successfully created.' }
        format.json { render :show, status: :created, location: @property_picture }
      else
        format.html { render :new }
        format.json { render json: @property_picture.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /property_pictures/1
  # PATCH/PUT /property_pictures/1.json
  def update
    respond_to do |format|
      if @property_picture.update(property_picture_params)
        format.html { redirect_to @property_picture, notice: 'Property picture was successfully updated.' }
        format.json { render :show, status: :ok, location: @property_picture }
      else
        format.html { render :edit }
        format.json { render json: @property_picture.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /property_pictures/1
  # DELETE /property_pictures/1.json
  def destroy
    @property_picture.destroy
    respond_to do |format|
      format.html { redirect_to property_pictures_url, notice: 'Property picture was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_property_picture
      @property_picture = PropertyPicture.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def property_picture_params
      params.require(:property_picture).permit(:name, :url, :property_id)
    end
end
