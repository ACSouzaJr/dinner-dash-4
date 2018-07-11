class HomeController < ApplicationController

  def index
    @categories = MealCategory.all
    @cart_item = current_cart.order_meals.new
  end
  
end
