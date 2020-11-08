require 'test_helper'

class AvisSousThematiquesControllerTest < ActionDispatch::IntegrationTest
  test "should get show" do
    get avis_sous_thematiques_show_url
    assert_response :success
  end

end
