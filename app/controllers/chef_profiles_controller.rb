class ChefProfilesController < ApplicationController
  before_action :authenticate_admin!
  before_action :set_chef_profile, only: [:show, :edit, :update, :destroy]

  # GET /chef_profiles
  # GET /chef_profiles.json
  def index
    @chef_profiles = Chef.select(:id, :name, :email, :phone, :is_branchef)
  end

  # GET /chef_profiles/1
  # GET /chef_profiles/1.json
  def show
    @chef_profile = Chef.find(params[:id])
  end

  # GET /chef_profiles/1/edit
  def edit
    @chef_profile = Chef.find(params[:id])
  end

  # PATCH/PUT /chef_profiles/1
  # PATCH/PUT /chef_profiles/1.json
  def update
    respond_to do |format|
      if @chef_profile.update(chef_profile_params)
        format.html { redirect_to @chef_profile, notice: 'Chef profile was successfully updated.' }
        format.json { render :show, status: :ok, location: @chef_profile }
      else
        format.html { render :edit }
        format.json { render json: @chef_profile.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /chef_profiles/1
  # DELETE /chef_profiles/1.json
  def destroy
    @chef_profile.destroy
    respond_to do |format|
      format.html { redirect_to chef_profiles_url, notice: 'Chef profile was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  def accepted
    @chef_profile = Chef.find(params[:id])
    @chef_profile.is_branchef = params[:is_branchef]
    if @chef_profile.save
      redirect_to chef_profile_path(params[:id])
    else
      redirect_to root_path
    end
  end

  def download_cv
    @chef_profile = Chef.find(params[:id])
    send_file @chef_profile.cv.path, type: "application/pdf", x_sendfile: true
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_chef_profile
      @chef_profile = Chef.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def chef_profile_params
      params.fetch(:chef_profile, {})
    end
end
