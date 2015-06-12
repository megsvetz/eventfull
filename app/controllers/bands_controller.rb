class BandsController < ApplicationController
  before_action :set_band, only: [:edit, :update, :show, :destroy]
  def index
    @bands = Band.all
  end
  def show
  end
  def new
    @band = Band.new
  end
  def create
    @band = Band.new(band_params)
    if @band.save
      redirect_to root_path
    else
      render :new
    end
  end
  def edit
  end
  def update
    if @band.update(band_params)
      redirect_to root_path
    else
      render :new
    end
  end
  def destroy
    @band.destroy
    redirect_to root_path
  end
  private
  def band_params
    params.require(:band).permit(:name, :website, :bio, :event_id)
  end
  def set_band
    @band = @band.find(params[:id])
  end
end
