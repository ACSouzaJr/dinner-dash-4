class Meal < ApplicationRecord
  belongs_to :meal_category
  has_many :order_meals

  validates :name, presence: true
  #validates :price, presence: true
  #validates :meal_categories_id, presence: true
  
end
