class Serie < ApplicationRecord
  has_many :images, dependent: :destroy
  has_many_attached :photos
  validate :name
end
