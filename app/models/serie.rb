class Serie < ApplicationRecord
  has_many :images

  validate :name
end
