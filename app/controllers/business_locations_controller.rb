class BusinessLocationsController < ApplicationController
  load_and_authorize_resource
  before_action :set_business_location, only: [:show, :edit, :update, :destroy]

  # GET /business_locations
  # GET /business_locations.json
  def index
    @business_locations = BusinessLocation.all
  end

  # GET /business_locations/1
  # GET /business_locations/1.json
  def show
  end

  # GET /business_locations/new
  def new
    @business_location = BusinessLocation.new
  end

  # GET /business_locations/1/edit
  def edit



  end


  # POST /business_locations
  # POST /business_locations.json
  def create
    @business_location = BusinessLocation.new(business_location_params)

    respond_to do |format|
      if @business_location.save
        format.html { redirect_to @business_location, notice: 'Business location was successfully created.' }
        format.json { render :show, status: :created, location: @business_location }
      else
        format.html { render :new }
        format.json { render json: @business_location.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /business_locations/1
  # PATCH/PUT /business_locations/1.json
  def update
    respond_to do |format|
      if @business_location.update(business_location_params)
        format.html { redirect_to @business_location, notice: 'Business location was successfully updated.' }
        format.json { render :show, status: :ok, location: @business_location }
      else
        format.html { render :edit }
        format.json { render json: @business_location.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /business_locations/1
  # DELETE /business_locations/1.json
  def destroy
    @business_location.destroy
    respond_to do |format|
      format.html { redirect_to business_locations_url, notice: 'Business location was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_business_location
      @business_location = BusinessLocation.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def business_location_params
      params.require(:business_location).permit(:title, :address, :postcode, :suburb, :city, :state, :latitude, :longitude, :company_id)
    end
end
