require 'test_helper'

class SousThematiquesControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get sous_thematiques_index_url
    assert_response :success
  end

end
