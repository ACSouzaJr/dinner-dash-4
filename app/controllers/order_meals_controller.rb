class OrderMealsController < ApplicationController
  
  def create
    #byebug
    current_cart << order_meal_params
  end

  def update
    #byebug
    @item = current_cart.find { |h| h['meal_id'] == params[:order_meal][:meal_id] }
    @item.update(order_meal_params)
  end
  
  def destroy
    #byebug
    delete_params = params.permit(:quantity, :meal_id)
    current_cart.delete(delete_params)
  end

  private
  def order_meal_params
    params.require(:order_meal).permit(:quantity, :meal_id)
  end

end
