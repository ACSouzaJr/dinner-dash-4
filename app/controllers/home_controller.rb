class HomeController < ApplicationController

  def index
    @categories = MealCategory.all
    @cart_item = OrderMeal.new
  end
  
end
