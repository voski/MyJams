class TracksController < ApplicationController
  def index

  end

  def new

  end

  def create

  end

  def edit

  end

  def show
    @band = Band.find(params[:id])

    render :show
  end

  def update
  end

  def destroy
  end
  
end
