class LikesController < ApplicationController
  def create
    current_user.likes.create!(caffe_id: params[:caffe_id])
    @caffe = Caffe.find(params[:caffe_id])
  end

  def destroy
    current_user.likes.find_by(caffe_id: params[:caffe_id]).destroy!
    @caffe = Caffe.find(params[:caffe_id])
  end
end
