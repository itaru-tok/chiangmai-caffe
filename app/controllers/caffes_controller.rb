class CaffesController < ApplicationController

  def show
    @caffe = Caffe.find(params[:id])
  end

  def index
    @caffes = Caffe.all
  end

  def new
    @caffe = Caffe.new
  end

  def create
    @caffe = Caffe.new(refer_params)
    if @caffe.save
      flash[:notice] = "Caffe was successfully created"
      redirect_to caffes_path
    else
      render 'new'
    end
  end

  def edit
    @caffe = Caffe.find(params[:id])
  end

  def update
    @caffe = Caffe.find(params[:id])
    if @caffe.update(refer_params)
      flash[:notice] = "Caffe was successfully updated"
      redirect_to @caffe
    else
      render 'edit'
    end
  end

  private
  def refer_params
    params.require(:caffe).permit(:name, :comment, :image)
  end
end
