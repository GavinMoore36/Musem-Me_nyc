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

end
