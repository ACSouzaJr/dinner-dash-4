class ApplicationController < ActionController::Base

  helper_method :current_cart
  
  def current_cart
    if session[:cart_id]
      Cart.find(session[:cart_id])
    else
      Cart.new
    end
  end

  protected

  def after_sign_in_path_for(resource)
    if current_user.admin?
      users_path
    else
      super
    end
  end
  
end
