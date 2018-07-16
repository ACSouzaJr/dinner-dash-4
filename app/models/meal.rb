class Meal < ApplicationRecord
  belongs_to :meal_category
  has_many :order_meals

  validates :name, presence: true
  validates :price, presence: true
  
  mount_uploader :image, ImageUploader

  default_scope { where(available: true) }

end
