class DashboardController < ApplicationController
  before_action :authenticate_admin!

  def index
    @chef = Chef.select(:id, :name, :email, :phone, :is_branchef)
  end
end
