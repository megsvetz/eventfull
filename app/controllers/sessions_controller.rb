class SessionsController < ApplicationController

  def new
  end

  def create
    @user = User.where(username: params[:username]).first
    if @user.present? && @user.authenticate(params[:password])
      session[:user_id] = @user.id
      redirect_to root_path, notice: 'Welcome!'
    else
      flash[:alert] = "Invalid username or password"
      render :new
    end
  end

  def destory
    session[:user_id] = nil
    redirect_to root_path
  end

end
