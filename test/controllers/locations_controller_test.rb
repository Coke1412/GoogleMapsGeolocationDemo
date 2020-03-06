require 'test_helper'

class LocationsControllerTest < ActionDispatch::IntegrationTest
  test "should get get_location" do
    get locations_get_location_url
    assert_response :success
  end

  test "should get find_address" do
    get locations_find_address_url
    assert_response :success
  end

end
