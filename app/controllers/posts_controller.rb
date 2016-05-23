class PostsController < ApplicationController
  def index
    @posts = Post.all.order(created_at: :desc)
    @categories = Category.all
    @category_posts = CategoryPost.all
    respond_to do |format|
      format.html
      format.pdf do
        pdf = ReportPdf.new(@posts)
        send_data pdf.render, filename: 'posts'+DateTime.now.to_s+'.pdf', type: 'application/pdf'
      end
    end
  end

  def show
    @post = Post.find(params[:id])
  end

  def new
    @post = Post.new
  end

  def create
    @post = Post.new(post_params)
    @post.user_id = current_user.id if current_user

    if @post.save
     redirect_to @post
    else
     render 'new'
    end
  end

  def edit
    @post = Post.find(params[:id])
  end

  def update
    @post = Post.find(params[:id])
    if @post.update(post_params)
      redirect_to @post
    else
      render 'edit'
    end
  end

  def destroy
    @post = Post.find(params[:id])
    @post.destroy

    redirect_to posts_path
  end


  private
  def post_params
    params.require(:post).permit(:user_id, :description, :school_id, :category_id, :price, :category_post_id, :promoted, :event_id)
  end

end
