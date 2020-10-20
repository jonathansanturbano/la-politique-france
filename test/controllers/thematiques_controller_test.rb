require 'test_helper'

class ThematiquesControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get thematiques_index_url
    assert_response :success
  end

  test "should get show" do
    get thematiques_show_url
    assert_response :success
  end

end
