class SessionsAdminController < ApplicationController
  def new
  end

  def create
    admin = Admin.find_by(user: params[:session][:user])
    if admin && admin.authenticate(params[:session][:password])
      log_in_admin admin
      redirect_to admin
    else
      render 'new'
    end
  end

  def destroy
    log_out_admin
    redirect_to :start
  end





end
