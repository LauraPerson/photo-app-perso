class SeriePolicy < ApplicationPolicy
  def index?
    return true
  end 

  def show?
    return true
  end 

  def edit?
    return true
  end 

  def update?
    return true
  end 

  def new?
    return true
  end 

  def create?
    return true
  end 

end
