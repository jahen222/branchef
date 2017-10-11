class ProfilesController < ApplicationController
  before_action :authenticate_user!

  def show
		#@info_usuario = User.select(:id, :name, :lastname, :email, :country, :city, :summary, :avatar_file_name).find(params[:id])
  end
end
