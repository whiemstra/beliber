class SessionsController < ApplicationController

  def new
  end

  def create
    @user = User.find_by(username: params[:session][:username])
    if @user && @user.authenticate(params[:session][:password])
      session[:user_id] = @user.id
      redirect_to user_path(@user)
    else
      flash[:error] = 'Username and/or password are not correct.'
      render :new
      #display error that username and/or password is incorrect
    end
  end

  def destroy
    session.clear
    redirect_to login_path
  end



end
