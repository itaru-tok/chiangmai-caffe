class HomesController < ApplicationController
  def index
    @caffes = Caffe.page(params[:page]).order(created_at: :desc)
  end
end
