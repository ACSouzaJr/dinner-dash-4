class AddCartToOrderMeals < ActiveRecord::Migration[5.2]
  def change
    add_reference :order_meals, :cart, foreign_key: true
  end
end
