class PagesController < ApplicationController
  def home
    @series = Serie.all
  end

  def contact
  end

  def about
  end
end
