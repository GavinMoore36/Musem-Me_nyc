class MuseumsController < ApplicationController
  before_action :find_museum, only: :show

  def index
    @museums = Museum.all
  end

  def show
  end
  def search
    if Museum.search(params[:search]) == @museum
      redirect_to museum_path(@museum)
    else
      redirect_to home_index_path
    end
  end

  private

  def find_museum
    @museum = Museum.find(params[:id])
  end

  def museum_params
    params.require(:museum).permit(:title, :address, :coordinate_x, :coordinate_y, :url, :zip, :phone, :borough_id, :search)
  end



end
