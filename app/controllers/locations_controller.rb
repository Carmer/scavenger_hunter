class LocationsController < ApplicationController
  before_action :set_location, only: [:show, :update, :destroy, :edit]

  def index
    @locations = current_user.locations
  end

  def new
    @location = Location.new
  end

  def create
    @location = current_user.locations.new(location_params)
    if @location.save
      redirect_to @location, notice: "Location created."
    else
      render :new, notice: "Location not created. Try again."
    end
  end

  def show
  end

  def edit
  end

  def update
    if @location.update_attributes(location_params)
      redirect_to @location
    else
      render :edit, notice: "Location could not be updated. Try again."
    end
  end

  def destroy
    if @location.destroy
      redirect_to locations_path, notice: "Location has been deleted."
    else
      redirect_to @location, notice: "Location could not be deleted. Try again."
    end
  end

  private

  def location_params
    params.require(:location).permit(:name, :clue, :address)
  end

  def set_location
    @location = Location.find(params[:id])
  end

end
