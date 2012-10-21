class UsersController < ApplicationController

  def show
    @user = User.includes(boards: :pins).find(params[:id])
  end
end
