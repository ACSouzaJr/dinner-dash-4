class ApplicationController < ActionController::Base

  helper_method :current_cart, :authorize_admin
  
  def current_cart
    session[:cart] ||= []
  end

  def authorize_admin
    redirect_to root_path, notice: 'Access Denied.' unless current_user.admin?
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
