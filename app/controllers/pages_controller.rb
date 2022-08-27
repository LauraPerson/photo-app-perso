class PagesController < ApplicationController
  skip_before_action :authenticate_user!, only: [:contact, :about, :home] 

  def home
    @series = Serie.all
  end

  def contact
    @contact = Contact.new
  end

  def about
    if Biography.first.present?
      @biography = Biography.first.content
    else
      @biography = "Write your biography"
    end
    if Event.first.present?
      @events = Event.all.order(year: :DESC)
    else
      @events = "Enter an event"
    end
  end
end
