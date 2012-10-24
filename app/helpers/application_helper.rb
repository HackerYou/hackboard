module ApplicationHelper

  def i_own?(object)
    user_signed_in? && current_user.owns?(object)
  end
end
