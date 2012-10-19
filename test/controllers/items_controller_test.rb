require "minitest_helper"

class ItemsControllerTest < MiniTest::Rails::Controller

  def test_new
    get :new
    assert_response :success
  end

end
