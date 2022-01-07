class SeriesController < ApplicationController
  skip_before_action :authenticate_user!, only: [:index, :show] 



  def index
    @series = policy_scope(Serie.all)
    authorize @series
  end

  def create 
    Serie.new(params_serie)
  end 

  def show
    @serie = Serie.find(params[:id])
    authorize @serie
  end 

 
  def params_serie
    params.require(:serie).permit(:name, :description)
  end 
end
