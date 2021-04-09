class UsersController < ApplicationController

  def index
    @users = User.all
  end
  
  def show
    find_user
  end

  def new
    @user = User.new
  end

  def create
    @user = User.new(user_params)
    @user.save
    redirect_to user_path(@user)
  end

  def edit
    find_user
  end

  def update
    find_user
    @user.update(user_params)
    redirect_to user_path(@user)
  end

  private

  def user_params
    params.require(:user).permit(:username, :gem_folder)
  end

  def find_user
    @user = User.find(params[:id])
  end
end
