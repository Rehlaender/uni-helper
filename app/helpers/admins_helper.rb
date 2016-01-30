module AdminsHelper

  def admin_logged_in
    unless logged_in_admin?
      redirect_to(admin_login_url)
    end
  end

  
end
