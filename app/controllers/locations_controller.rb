class LocationsController < ApplicationController

  def show
    @json_data = Location.find(params[:id]).to_json
  end
end
