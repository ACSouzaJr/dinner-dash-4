class Meal < ApplicationRecord
  belongs_to :meal_categories
  has_many :order_meals

  validates :name, presence: true
  #validates :price, presence: true
  #validates :meal_categories_id, presence: true
  
end
