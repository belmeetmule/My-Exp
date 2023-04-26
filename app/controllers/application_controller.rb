class ApplicationController < ActionController::Base
  before_action :authenticate_user!, except: [:splash]
  protect_from_forgery with: :exception

  before_action :set_allowed_parameters, if: :devise_controller?

  def after_sign_in_path_for(_resource)
    categories_url
  end

  protected

  def set_allowed_parameters
    devise_parameter_sanitizer.permit(:sign_up) { |u| u.permit(:name, :email, :password) }
    devise_parameter_sanitizer.permit(:account_update) do |u|
      u.permit(:name, :email, :password, :current_password)
    end
  end
end
