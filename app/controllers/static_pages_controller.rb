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
end
