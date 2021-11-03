class Recipe < ApplicationRecord
  belongs_to :Author
  has_one_attached :image
  has_many :ingredients
  has_many :ratings
end
