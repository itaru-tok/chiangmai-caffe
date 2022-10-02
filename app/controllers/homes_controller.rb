class HomesController < ApplicationController

  PER_PAGE = 8

  def index
    @caffes = Caffe.page(params[:page]).order(created_at: :desc).per(PER_PAGE)
    @users = User.page(params[:page]).order(created_at: :desc).per(PER_PAGE)
  end
end
