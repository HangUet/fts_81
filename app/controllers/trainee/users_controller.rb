class Trainee::UsersController < ApplicationController
  before_action :authenticate_user!
  before_action :find_user, only: :show

  def show; end

  def all_users
    @members = User.by_fields.trainee.page(params[:page]).per Settings.per_page
  end

  private

  def find_user
    @user = User.find_by_id params[:id]
    if @user&.trainee?
      return @user
    else
      flash[:danger] = t ".message.not_found_member"
      redirect_to root_path
    end
  end
end
