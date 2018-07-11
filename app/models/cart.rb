class Cart < ApplicationRecord
  has_many :order_meals

  def total_price
    order_meals.collect { |order_meal| order_meal.valid? ? (order_meal.quantity * order_meal.meal.price) : 0 }.sum
  end
  
end
