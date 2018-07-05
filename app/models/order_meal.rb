class OrderMeal < ApplicationRecord
  belongs_to :orders
  belongs_to :meals
end
