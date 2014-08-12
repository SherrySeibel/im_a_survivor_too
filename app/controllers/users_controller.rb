class UsersController < ApplicationController
  skip_before_action :require_login, only: [:new, :create]

  def show
    @profile = Profile.new
    @user_profile = profile.find(params[:id])
  end

  private

  def user_params
    require(:user).
      permit(
        :new,
        :create,
    )
  end
end
