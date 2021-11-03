class Recipe < ApplicationRecord
  belongs_to :Author
  has_one_attached :image
end
