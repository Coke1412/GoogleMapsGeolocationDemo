class LocationsController < ApplicationController
  def get_location
  end

  def find_address
    lat = params[:latitude]
    long = params[:longitude]
    response = { address: Geocoder.address([lat, long]) }
    render json: response.to_json
  end
end
