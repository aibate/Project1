class LocationsController < ApplicationController
  before_action :check_in_log
  
  def index
    # @locations = Location.user_id.find @current_user.id
    @locations = Location.where(user_id: @current_user.id)
  end

  def new
    @location = Location.new
  end

  def create
    location = Location.create location_params
    @current_user.locations << location #assign user 
    # location = @current_user.locations.create location_params
    redirect_to location    #location_path params[:id] 
   
  end

  def show
    @location = Location.find params[:id]
  end

  def edit
    @location = Location.find params[:id]
  end
    
  def destroy
    location = Location.find params[:id]
    location.destroy
    redirect_to locations_path
  end

  private
  def location_params
    params.require(:location).permit(:address, :harvest, :image, :note )
  end
end
