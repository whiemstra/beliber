class UsersController < ApplicationController

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


end


