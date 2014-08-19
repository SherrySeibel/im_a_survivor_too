class UsersController < ApplicationController
  def show
    @user = current_user
  end

  def update
    @user = current_user

    if @user.update(user_params)
      redirect_to user_path, notice: "Your information has saved"
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
