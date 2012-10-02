require "minitest_helper"

class PinControllerTest < MiniTest::Rails::Controller
  before do
    @pin = pins(:one)
  end

  def test_index
    get :index
    assert_response :success
    assert_not_nil assigns(:pins)
  end

  def test_new
    get :new
    assert_response :success
  end

  def test_create
    assert_difference('Pin.count') do
      post :create, pin: @pin.attributes
    end

    assert_redirected_to pin_path(assigns(:pin))
  end

  def test_show
    get :show, id: @pin.to_param
    assert_response :success
  end

  def test_edit
    get :edit, id: @pin.to_param
    assert_response :success
  end

  def test_update
    put :update, id: @pin.to_param, pin: @pin.attributes
    assert_redirected_to pin_path(assigns(:pin))
  end

  def test_destroy
    assert_difference('Pin.count', -1) do
      delete :destroy, id: @pin.to_param
    end

    assert_redirected_to pins_path
  end
end
