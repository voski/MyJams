class BandsController < ApplicationController
  def index
    @bands = Band.all
  end

  def new
    @band = Band.new
  end

  def create
    @band = Band.new(band_params)

    if @band.save
      flash.notice = "#{@band.name} successfully added"
      redirect_to band_url(@band)
    else
      flash.now[:errors] = @band.errors.full_messages
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
    @band = Band.find(params[:id])
    if @band.nil?
      flash[:error] = "Could not find band with id: #{params[:id]}"
    else
      flash.notice = "Successfuly deleted #{@band.name}"
      @band.destroy
    end

    redirect_to root_url
  end

  def band_params
    params.require(:band).permit(:name)
  end

end
