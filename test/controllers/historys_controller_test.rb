require 'test_helper'

class HistorysControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get historys_index_url
    assert_response :success
  end

end
