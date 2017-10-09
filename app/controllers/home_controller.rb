class HomeController < ApplicationController
	before_action :authenticate_user!

	def index
		@info_usuarios = User.select(:id, :name, :lastname, :email, :summary, :avatar_file_name)
	end
end
