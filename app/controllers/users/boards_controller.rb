class Users::BoardsController < ApplicationController
  def index
    user = User.find(params[:user_id])

    @boards = user.boards
  end
end
