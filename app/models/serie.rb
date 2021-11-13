class Serie < ApplicationRecord
  has_many :images

  validates :name
end
