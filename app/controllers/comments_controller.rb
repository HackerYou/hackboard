class CommentsController < ApplicationController

  before_filter :authenticate_user!

  def create
    pin = Pin.find(params[:pin_id])

    if current_user.comments.create(params[:comment].merge(pin: pin))
      redirect_to pin, notice: "Comment created successfully"
    else
      redirect_to pin
    end
  end
end
