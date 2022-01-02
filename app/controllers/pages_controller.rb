class PagesController < ApplicationController
  skip_before_action :authenticate_user!, only: [:contact, :about] 

  def home
    @series = Serie.all
  end

  def contact
  end

  def about
    unless Biography.empty?
      @biography = Biography.first.content
    end
    unless Event.empty?
      @events = Event.all.order(year: :DESC)
    end
  end
end
