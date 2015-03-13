class AlbumsController < ApplicationController
  def index

  end

  def new

  end

  def create

  end

  def edit

  end

  def show
    @album = Album.find(params[:id])

    render :show
  end

  def update
  end

  def destroy
  end
end
