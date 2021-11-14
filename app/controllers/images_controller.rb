class ImagesController < ApplicationController

  def index
    Image.all
  end

  def create
    Image.new(image)
  end

  def show
    @image = Image.find(params[:id])
  end


  def params_image
    params.require(:image).permit(:name, :description, :technique, :location, :date, :camera, :photo)
  end

end
