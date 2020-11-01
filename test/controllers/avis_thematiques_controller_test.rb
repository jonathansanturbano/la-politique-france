require 'test_helper'

class AvisThematiquesControllerTest < ActionDispatch::IntegrationTest
  test "should get show" do
    get avis_thematiques_show_url
    assert_response :success
  end

end
