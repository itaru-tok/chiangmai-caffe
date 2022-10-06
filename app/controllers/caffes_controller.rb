class CaffesController < ApplicationController
  before_action :set_caffe, only: [:show, :edit, :update, :destroy]
  before_action :authenticate_user!, only: [:new, :create, :edit, :update, :destroy]
  before_action :require_same_user, only: [:edit, :update, :destroy]

  def show
  end

  PER_PAGE = 16

  def index
    @caffes = Caffe.page(params[:page]).includes(:user, :likes).order(created_at: :desc).per(PER_PAGE)
  end

  def new
    @caffe = Caffe.new
  end

  def create
    @caffe = Caffe.new(refer_params)
    @caffe.user = current_user
    if @caffe.save
      redirect_to caffes_path
    else
      render 'new'
    end
  end

  def edit
  end

  def update
    if @caffe.update(refer_params)
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
    params.require(:caffe).permit(:name, :comment, :image, :area)
  end

  def set_caffe
    @caffe = Caffe.find(params[:id])
  end

  def require_same_user
    if current_user != @caffe.user
      flash[:alert] = "You can only edit or delete your own caffe"
      redirect_to @caffe
    end
  end

end
