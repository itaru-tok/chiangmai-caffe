class UsersController < ApplicationController
  PER_PAGE = 16

  def index
    @users = User.page(params[:page]).order(created_at: :desc).per(PER_PAGE)
  end

  def show
    @user = User.find(params[:id])
    @caffes = @user.caffes.page(params[:page]).order(created_at: :desc).per(PER_PAGE)
    @user_likes = @user.likes.page(params[:page]).order(created_at: :desc).per(PER_PAGE)
  end

end
