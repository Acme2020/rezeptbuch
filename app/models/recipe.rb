class Recipe < ApplicationRecord
  has_one :author
  has_one_attached :image
  has_many :ingredients
  has_many :ratings, dependent: :destroy
end
