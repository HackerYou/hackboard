require "minitest_helper"

class UsersControllerTest < MiniTest::Rails::Controller

  def test_show
    get :show
    assert_response :success
  end

end
