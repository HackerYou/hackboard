require "minitest_helper"

class CommentsControllerTest < MiniTest::Rails::Controller

  def test_create
    get :create
    assert_response :success
  end

end
