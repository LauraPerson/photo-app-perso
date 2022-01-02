class PagesController < ApplicationController
  skip_before_action :authenticate_user!, only: [:contact, :about] 

  def home
    @series = Serie.all
  end

  def contact
  end

  def about
    unless Biography.nil?
      @biography = Biography.first.content
    else
      @biography = "Write your biography"
    end
    unless Event.nil?
      @events = Event.all.order(year: :DESC)
    else
      @events = "Enter an event"
    end
  end
end
