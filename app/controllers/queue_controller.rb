class QueueController < ApplicationController

  def update
    flash[:message] = "You added #{params[:museum_title]} to your queue."
    add_museum_to_queue(params[:museum_id])
    redirect_to museums_path
  end

  def index
    display_queue
  end

end
