class Serie < ApplicationRecord
  has_many :images
  has_one_attached :main_image


  validate :name
end
