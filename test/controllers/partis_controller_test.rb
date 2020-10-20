require 'test_helper'

class PartisControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get partis_index_url
    assert_response :success
  end

  test "should get show" do
    get partis_show_url
    assert_response :success
  end

end
