class UsersController < ApplicationController
  include SessionsHelper

  def index
    @users = User.all
  end

  def show
    @user = User.find(params[:id])
  end

  def new
    @user = User.new
  end

  def create
    @user = User.new(user_params)

    if @user.save
     redirect_to @user
    else

     redirect_to action: "new"

    end
  end

  def edit
    @user = User.find(params[:id])
  end

  def update
    @user = User.find(params[:id])

    if @user.update(user_params)
    redirect_to @user
    else
    render 'edit'
    end
  end

  def destroy
    @user = User.find(params[:id])
    @user.destroy

    redirect_to users_path
  end

  def posts
    @posts = User.find(params[:id]).posts    
  end

  private
  def user_params
    params.require(:user).permit(:name, :user, :password, :mail, :telephone, :password_confirmation)
  end
end
