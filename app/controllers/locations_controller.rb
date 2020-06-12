class LocationsController < ApplicationController

  def index
    @location = Location.all
  end

  def show
    @location = Location.find(params[:id])
  end

  def update
  end

  def new
    @location = Location.new
  end

  def create
    @location = Location.new(location_params)
    @location.images.attach(params[:location][:images])
    @location.save!
    redirect_to dogs_path
  end

  private

  def location_params
    params.require(:location).permit(:name, :description, :small, :medium, :large, images: [])
  end



end
