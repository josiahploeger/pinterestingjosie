class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception
		
	before_filter :configure_permitted_parameters, if: :devise_controller?
		protected

		  def configure_permitted_parameters
		    devise_parameter_sanitizer.for(:sign_up) << :name #{ |u| u.permit(:username, :email, :password,
		    #  :password_confirmation, :remember_me, :pins, :pins_cache) }
		    devise_parameter_sanitizer.for(:account_update) << :name #{ |u| u.permit(:username, :email, :password,
		    #  :password_confirmation, :current_password, :pins, :pins_cache) }
		  #end

  # Overwriting the sign_out redirect path method
  def after_sign_out_path_for(resource_or_scope)
    root_path
  end

end
