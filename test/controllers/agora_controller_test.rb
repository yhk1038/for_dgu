require 'test_helper'

class AgoraControllerTest < ActionController::TestCase
  test "should get info" do
    get :info
    assert_response :success
  end

end
