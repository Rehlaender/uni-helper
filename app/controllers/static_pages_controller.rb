class StaticPagesController < ApplicationController
  def index
    @category_posts = CategoryPost.all
  end

  def home
    @category_posts = CategoryPost.all
  end

  def aboutus
  end

  def start

  end

  def administration
    redirect_to admin_login_url unless !current_admin.nil?
  end

end
