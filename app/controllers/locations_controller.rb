class LocationsController < ApplicationController

  def show
    @json_data = Location.find_by_zip(params[:id]).to_json
  end

  def index
    if User.all.exists?(authentification_key: params[:authentification_key])
      @json_data=Location.near([params[:latitude],params[:longitude]],100)[0..params[:number].to_i].to_json
    else
      @json_data="You need an authentification key to see this data."
    end
  end

  private

  def location_params
    params.require(:location).permit(:zip,:latitude,:longitude,:number,:apikey)
  end
end
