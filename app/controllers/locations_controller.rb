class LocationsController < ApplicationController

  def show
    @json_data = Location.find_by_zip(params[:id]).to_json
  end

  def index
    @json_data=Location.near([params[:latitude],params[:longitude]],100)[0..params[:number].to_i].to_json
  end

  private

  def location_params
    params.require(:location).permit(:zip,:latitude,:longitude,:number)
  end
end
