class Recipe < ApplicationRecord
  belongs_to :Author
  has_one_attached :image
  has_many :ingredients
end
