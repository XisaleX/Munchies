class PicsController < ApplicationController

  def new
    @pic = Pic.new
    @pic.picture = params[:file]
  end

  def create
    @place = Place.find(params[:place_id])
    @pic = @place.pics.create(pic_params)
    redirect_to root_path
  end


  private

  def pic_params
    params.require(:pic).permit(:picture, :caption)
  end
end
