class Serie < ApplicationRecord
  has_many :images, dependent: :destroy
  has_many :photos
  validate :name
end
