class DashboardController < ApplicationController

  before_action :authenticate_user!
  before_action :user_params, only: [:update_profile]

  def index
  end

  def update_profile
    current_user.update user_params
    flash[:notice] = "Profile updated successfully"
    redirect_to root_path
  end

private

  def user_params
    params.permit(:first_name, :last_name, :profile_picture)
  end

end
