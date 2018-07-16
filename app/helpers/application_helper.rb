module ApplicationHelper

  def cart_total_price
    #que horor
    subtotal = 0
    unless current_cart.empty?
      current_cart.each do |item|
        subtotal += Meal.find(item['meal_id']).price * item['quantity'].to_i
      end
    end
    subtotal
  end

end
