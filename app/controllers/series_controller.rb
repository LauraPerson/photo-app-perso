class SeriesController < ApplicationController

  def index
    @series = Serie.all
  end

  def create 
    Serie.new(params_serie)
  end 

  def show
    @serie = Serie.find(params[:id])
  end 

 
  def params_serie
    params.require(:serie).permit(:name, :description)
  end 
end
