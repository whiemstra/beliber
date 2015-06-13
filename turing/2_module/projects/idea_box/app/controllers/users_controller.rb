class UsersController < ApplicationController
  before_filter :logged_in?, only: [:show]

  def index
    render :text => "This is the index page"
  end

  def new
    @user = User.new
  end

  def create
    @user = User.new(user_params)
    if @user.save
      session[:user_id] = @user.id
      redirect_to @user
    else
      redirect_to '/signup' #or could do signup_path
    end
  end

  def show
  end





private

  def user_params
    params.require(:user).permit(:username, :password)
  end

  def logged_in?
    if session[:user_id] != nil
      true
    else
      flash[:error] = "You must be logged in to perform this action"
      redirect_to login_path
      return false
    end

  end


end


