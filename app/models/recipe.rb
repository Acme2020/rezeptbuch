class Recipe < ApplicationRecord
  has_one :author
  has_one_attached :image
  has_many :ingredients, dependent: :delete_all
  has_many :ratings, dependent: :delete_all
end
