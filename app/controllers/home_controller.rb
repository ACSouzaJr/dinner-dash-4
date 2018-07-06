class HomeController < ApplicationController

  def index
    @categories = MealCategory.all
  end
  
end
