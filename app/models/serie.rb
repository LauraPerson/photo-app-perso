class Serie < ApplicationRecord
  has_many :images, dependent: :destroy
  has_one_attached :main_image


  validate :name
end
