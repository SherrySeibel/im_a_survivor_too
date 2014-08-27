class UsersController < ApplicationController
  def show
  end

  def edit
  end

  def update
    @user = current_user

    if @user.update(user_params)
      redirect_to @user
    else
      render :show
    end
  end

  private

  def user_params
    params.require(:user).
      permit(
        :name,
        :age,
        :cancer_type,
        :diagnosis_date,
        :story,
    )
  end
end
