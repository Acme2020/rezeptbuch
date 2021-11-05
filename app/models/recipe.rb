class Recipe < ApplicationRecord
  belongs_to :author, dependent: :destroy
  has_one_attached :image
  has_many :ingredients, dependent: :destroy
  has_many :ratings, dependent: :destroy
  accepts_nested_attributes_for :author
end
