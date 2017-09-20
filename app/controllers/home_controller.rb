class HomeController < ApplicationController
	def index
		@info_usuarios = User.select(:id, :name, :lastname, :email, :summary, :avatar_file_name)

	end
end
