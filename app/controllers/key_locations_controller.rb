class KeyLocationsController < ApplicationController

  before_action :set_key_location

  def index
    @key_location = KeyLocaiton.find_by_id(1) || KeyLocation.new
  end

  def create
    @key_location = KeyLocation.new(key_locations_params)

    if @key_location.save
      redirect root_path
    end
  end

  def destroy
    @key_location.destroy
    redirect root_path
  end

  private

  def key_locations_params
    params.require(:key_location).permit(:id, :key_id, :location_id)
  end

  def set_key_location
    @key_location = KeyLocation.find_by_id(key_locations_params[:id])
  end

end
