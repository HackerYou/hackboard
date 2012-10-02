require "minitest_helper"

class BoardControllerTest < MiniTest::Rails::Controller
  before do
    @board = boards(:one)
  end

  def test_index
    get :index
    assert_response :success
    assert_not_nil assigns(:boards)
  end

  def test_new
    get :new
    assert_response :success
  end

  def test_create
    assert_difference('Board.count') do
      post :create, board: @board.attributes
    end

    assert_redirected_to board_path(assigns(:board))
  end

  def test_show
    get :show, id: @board.to_param
    assert_response :success
  end

  def test_edit
    get :edit, id: @board.to_param
    assert_response :success
  end

  def test_update
    put :update, id: @board.to_param, board: @board.attributes
    assert_redirected_to board_path(assigns(:board))
  end

  def test_destroy
    assert_difference('Board.count', -1) do
      delete :destroy, id: @board.to_param
    end

    assert_redirected_to boards_path
  end
end
