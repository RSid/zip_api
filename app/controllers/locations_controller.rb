class LocationsController < ApplicationController

  def show
    @json_data = Location.find_by_zip(params[:id]).to_json
  end

  private

  def location_params
    params.require(:location).permit(:zip)
  end
end
