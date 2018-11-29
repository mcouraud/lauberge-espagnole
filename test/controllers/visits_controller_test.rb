require 'test_helper'

class VisitsControllerTest < ActionDispatch::IntegrationTest
  test "should get create" do
    get visits_create_url
    assert_response :success
  end

end
