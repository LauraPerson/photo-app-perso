class Image < ApplicationRecord
  belongs_to :serie
  has_one_attached :photo
end
