class ApplicationController < ActionController::Base
  before_action :condigure_permited_params,  if: :devise_controller?

  def condigure_permited_params
    devise_parameter_sanitizer.permit(:sign_up, keys: [:name])
    devise_parameter_sanitizer.permit(:account_update, keys: [:name])
  end

end
