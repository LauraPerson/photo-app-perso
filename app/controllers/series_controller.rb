class SeriesController < ApplicationController
  skip_before_action :authenticate_user!, only: [:index, :show] 



  def index
    @series = policy_scope(Serie.all)
    authorize @series
  end

  def new 
    @serie = Serie.new
    authorize @serie
  end 

  def create
    @serie = Serie.new(params_serie)
    @serie.save 
    authorize @serie

    flash.alert = "Nouvealle série ajoutée"
    redirect_to series_index_path
  end

  def edit
    @serie = Serie.find(params[:id])
    authorize @serie

  end

  def update
    @serie = Serie.find(params[:id])
    @serie.update(params_serie)
    authorize @serie

    flash.alert = "Série Modifiée"


    redirect_to series_index_path
  end

  def show
    @serie = Serie.find(params[:id])
    authorize @serie
  end 

  private 

 
  def params_serie
    params.require(:serie).permit(:name, :description, photos: [])
  end 
end
