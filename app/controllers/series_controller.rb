class SeriesController < ApplicationController
  skip_before_action :authenticate_user!, only: [:index, :show] 



  def index
    @unarchived_series = Serie.where(archive: false)
    @series = policy_scope(@unarchived_series)
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
    redirect_to series_path(@serie)
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
    redirect_to series_path(@serie)
  end



  def update
    @serie = Serie.find(params[:id])
      if @serie.update(params_serie.reject { |k| k["photos"] })
        if params_serie[:photos].present?
          params_serie[:photos].each do |photo|
            @serie.photos.attach(photo)
          end
        end
        flash.alert = "Série Modifiée"
        redirect_to series_path(@serie)
      else
        flash.alert = "Série non modifiée"
        redirect_to series_path
      end
      authorize @serie


   end

  def show
    @serie = Serie.find(params[:id])
    authorize @serie
  end 

  private 

 
  def params_serie
    params.require(:serie).permit(:name, :description, :archive, photos: [])
  end 

  
end
