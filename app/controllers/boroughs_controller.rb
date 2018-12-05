class BoroughsController < ApplicationController

  def index
    @boroughs = Borough.all
  end

  def show
    @borough = Borough.find(params[:id])
    @museums = Museum.all
  end

end
