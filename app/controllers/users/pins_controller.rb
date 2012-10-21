class Users::PinsController < ::PinsController

  def index
    user = User.find(params[:user_id])

    @pins = user.pins
  end
end
