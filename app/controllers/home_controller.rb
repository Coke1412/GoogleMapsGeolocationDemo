class HomeController < ApplicationController
  before_action :authenticate_user!

  def index
    @users = current_user.nearbys(30)
    @hash = Gmaps4rails.build_markers(@users) do |user, marker|
      marker.lat user.latitude
      marker.lng user.longitude
      marker.infowindow user.address
    end
  end
end
