class OrderMealsController < ApplicationController
  before_action :set_item, only: [:create, :update]
  
  def create
    #byebug
    #quando tenta adicionar um item que ja existe aumenta quantidade em 1
    if @item
      @item['quantity'] = @item['quantity'].to_i + 1
    else
      current_cart << order_meal_params
      #current_cart.uniq! #nao permited duplicação
    end
  end

  def update
    #byebug
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
  def set_item
    @item = current_cart.find { |h| h['meal_id'] == params[:order_meal][:meal_id] }
  end
  
end
