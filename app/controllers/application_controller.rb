class ApplicationController < ActionController::Base

  def queue
    session[:museum_id] ||= []
  end

  def add_museum_to_queue(museum_id)
    queue << museum_id
  end

  def display_queue
    @queue_museums = Museum.find(queue)
  end

  def welcome
    @museum = Museum.search(params[:search])
  end

  def museum_params
    params.require(:museum).permit(:title, :address, :coordinate_x, :coordinate_y, :url, :zip, :phone, :borough_id, :search)
  end


end
