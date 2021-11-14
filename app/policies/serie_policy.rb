class SeriePolicy < ApplicationPolicy
  def index?
    return true
  end 

  def show?
    return true
  end 

end
