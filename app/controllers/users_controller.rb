class UsersController < ApplicationController
  PER_PAGE = 20

  def index
    @users = User.page(params[:page]).order(created_at: :desc).per(PER_PAGE)
  end

  def show
    @user = User.find(params[:id])
    @caffes = @user.caffes.page(params[:page]).order(created_at: :desc).per(PER_PAGE)
  end

end
