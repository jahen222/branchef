class DashboardController < ApplicationController
  before_action :authenticate_admin!

  def index
    @chefs = Chef.select(:id, :name, :email, :phone, :is_branchef)
  end

  def editchef
    @chef = Chef.find(params[:id])
  end

  def accepted
    @chef = Chef.find(params[:id])
    @chef.is_branchef = params[:is_branchef]
    if @chef.save
      redirect_to :action => "editchef", :id => params[:id]
    else
      redirect_to root_path
    end
  end
end
