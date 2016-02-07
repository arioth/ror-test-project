class UsersController < ApplicationController

  def show
    @user = User.find(params[:id])
  end

  def search
    users = User.where('confirmed_at IS NOT NULL')
                .where("email LIKE ?", "%#{params[:term].to_s.downcase}%")
    render json: users.map { |u| { label: u.email, id: u.id } }
  end

end
