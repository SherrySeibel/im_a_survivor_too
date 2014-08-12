class UsersController < ApplicationController
  def show
    @user = current_user
  end

  def update
    @user = current_user

    if @user.update(user_params)
      redirect_to user_path
    else
      render :show
    end
  end

  private

  def user_params
    params.require(:user).
      permit(
        :story_photo,
        :video,
    )
  end
end
