class ApplicationController < ActionController::Base
  before_action :configure_permitted_parameters, if: :devise_controller?

  protected

  def configure_permitted_parameters
    devise_parameter_sanitizer.permit(:account_update, keys: [:user_name, :bio])
  end

   private
     def after_sign_out_path_for(resource_or_scope)
       user_session_path
     end
end
