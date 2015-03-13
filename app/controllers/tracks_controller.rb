class TracksController < ApplicationController
  def index

  end

  def new
    @album = Album.find_by_id(params[:album_id])
    @track = Track.new
  end

  def create

    @track = Track.new(track_params)
    if @track.save
      flash.notice = "#{@track.name} successfully added to #{@track.album.name}"
      redirect_to album_url(@track.album)
    else
      flash.now[:errors] = @track.errors.full_messages
      render :new
    end
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

  def track_params
    params.require(:track).permit(:name, :album_id, :track_type, :lyrics)
  end
end
