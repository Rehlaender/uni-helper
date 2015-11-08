class CategoryPostsController < ApplicationController
  def index
    @category_posts = CategoryPost.all
    @categories = Category.all
  end

  def show
    @category_post = CategoryPost.find(params[:id])
  end

  def new
    @category_post = CategoryPost.new
  end

  def edit
    @category_post = CategoryPost.find(params[:id])
  end

  def create
    @category_post = CategoryPost.new(category_post_params)

    if @category_post.save
      redirect_to @category_post
    else
      render 'new'
    end
  end

  def update
    @category_post = CategoryPost.find(params[:id])
    if @category_post.update(category_post_params)
      redirect_to @category_post
    else
      render 'edit'
    end
  end

  def destroy
    @category_post = CategoryPost.find(params[:id])
    @category_post.destroy

    redirect_to category_posts_path
  end

  def posts
    @posts = CategoryPost.find(params[:id]).posts
  end

  private
  def category_post_params
    params.require(:category_post).permit(:name)
  end
end
