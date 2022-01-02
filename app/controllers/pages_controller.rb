class PagesController < ApplicationController
  skip_before_action :authenticate_user!, only: [:contact, :about] 

  def home
    @series = Serie.all
  end

  def contact
  end

  def about
    @biography = Biography.first.content
  end
end
