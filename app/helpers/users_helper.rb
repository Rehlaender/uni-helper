module UsersHelper

  def user_in_logged
    unless logged_in?
      redirect_to(login_url)
    end
  end

end
