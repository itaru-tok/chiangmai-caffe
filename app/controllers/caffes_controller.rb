class CaffesController < ApplicationController
  before_action :set_caffe, only: [:show, :edit, :update, :destroy]
  before_action :authenticate_user!, only: [:new, :create, :edit, :update, :destroy]

  def show
  end

  PER_PAGE = 16

  def index
    @caffes = Caffe.page(params[:page]).order(created_at: :desc).per(PER_PAGE)
  end

  def new
    @caffe = Caffe.new
  end

  def create
    @caffe = Caffe.new(refer_params)
    @caffe.user = current_user
    if @caffe.save
      flash[:notice] = "Caffe was successfully created"
      redirect_to caffes_path
    else
      render 'new'
    end
  end

  def edit
  end

  def update
    if @caffe.update(refer_params)
      flash[:notice] = "Caffe was successfully updated"
      redirect_to @caffe
    else
      render 'edit'
    end
  end

  def destroy
    @caffe.destroy
    redirect_to caffes_path
  end

  private
  def refer_params
    params.require(:caffe).permit(:name, :comment, :image)
  end

  def set_caffe
    @caffe = Caffe.find(params[:id])
  end
end
