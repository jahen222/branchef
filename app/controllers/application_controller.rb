class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception
  before_filter :configure_permitted_parameters, if: :devise_controller?

  def configure_permitted_parameters
  	devise_parameter_sanitizer.permit(:sign_up) { |u| u.permit(:avatar, :email, :name, :last_name, :is_female, :phone, :address, :zip_code, :date_of_birth, :link_blog, :link_instagram, :link_facebook, :link_linkedin, :summary, :password)}
  	devise_parameter_sanitizer.permit(:account_update) { |u| u.permit(:avatar, :email, :name, :last_name, :is_female, :phone, :address, :zip_code, :date_of_birth, :link_blog, :link_instagram, :link_facebook, :link_linkedin, :summary, :password, :current_password)}
  end
end
