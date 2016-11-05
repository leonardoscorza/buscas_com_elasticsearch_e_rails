require 'test_helper'

class SeriesControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get series_index_url
    assert_response :success
  end

end
