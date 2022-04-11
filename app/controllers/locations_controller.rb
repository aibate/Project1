class LocationsController < ApplicationController
  before_action :check_in_log
  
  def index
    @location = Location.All
  end

  def new
    @location = Location.new
  end

  def create
    location = Location.create location_params
    @current_user.locations << location #assign owner 
    # location = @current_user.locations.create location_params
    redirect_to location    #location_path params[:id] 
   
  end

  def show
    @location = Location.find params[:id]
  end

  def edit
    
  end

  def destroy

  end

  private
  def location_params
    params.require(:location).permit(:address, :harvest, :image, :note )
  end
end
