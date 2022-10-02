class HomesController < ApplicationController

  PER_PAGE = 12

  def index
    @caffes = Caffe.page(params[:page]).order(created_at: :desc).per(PER_PAGE)
  end
end
