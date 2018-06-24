class ApplicationController < ActionController::Base

  protected

  def after_sign_in_path_for(resource)
    if current_user.admin?
      users_path
    else
      super
    end
  end
  
end
