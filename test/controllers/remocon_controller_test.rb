require 'test_helper'

class RemoconControllerTest < ActionController::TestCase
  test "should get save" do
    get :save
    assert_response :success
  end

end
