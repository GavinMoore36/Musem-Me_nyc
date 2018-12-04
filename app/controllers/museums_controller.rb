class MuseumsController < ApplicationController
  before_action :find_museum, only: :show

  def index
    @museums = Museum.all
  end

  def show
    @museum = Museum.find(params[:id])
  end

  private

  def find_museum
    @museum = Museum.find(params[:id])
  end

end
