class AlbumsController < ApplicationController
  def index

  end

  def new
    @album = Album.new

    @band = Band.find_by_id(params[:band_id])
    
    render :new
  end

  def create
    @album = Album.new(album_params)
    if @album.save
      redirect_to album_url @album
    else
      flash.now[:errors] = @album.errors.full_messages
      render :new
    end
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

  def album_params
    params.require(:album).permit(:band_id, :name, :album_type)
  end
end
