class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception
  before_filter :configure_permitted_parameters, if: :devise_controller?

  def configure_permitted_parameters
  	devise_parameter_sanitizer.permit(:sign_up) { |u| u.permit(:avatar, :email, :name, :last_name, :is_female, :phone, :address, :zip_code, :date_of_birth, :summary, :password, :image1, :image2, :image3, :image4, :image5, :image6, :image7, :image8, :image9, :image10, :cv)}
  	devise_parameter_sanitizer.permit(:account_update) { |u| u.permit(:avatar, :email, :name, :last_name, :is_female, :phone, :address, :zip_code, :date_of_birth, :summary, :password, :current_password, :image1, :image2, :image3, :image4, :image5, :image6, :image7, :image8, :image9, :image10, :cv)}
  end
end
