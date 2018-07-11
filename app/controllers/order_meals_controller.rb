class OrderMealsController < ApplicationController
  
  def create
    byebug
    current_cart << order_meal_params
  end

  def update
    current_cart.update(order_meal_params)
  end
  
  def destroy
    current_cart.delete(order_meal_params)
  end

  private
  def order_meal_params
    params.require(:order_meal).permit(:quantity, :meal_id)
  end

end
