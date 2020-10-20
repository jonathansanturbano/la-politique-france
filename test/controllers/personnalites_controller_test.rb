require 'test_helper'

class PersonnalitesControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get personnalites_index_url
    assert_response :success
  end

  test "should get show" do
    get personnalites_show_url
    assert_response :success
  end

end
