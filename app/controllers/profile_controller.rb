class ProfileController < ApplicationController
  before_action :who_is, only: [:edit, :update]

  def show
    @user = User.find(params[:id])
  end

  def edit
    redirect_to profile_path @user unless @user == User.find(params[:id])
  end

  def update
    if @user.update(user_params)
      redirect_to profile_path, notice: "Your profile was successfully updated."
    else
      render :show
    end
  end

  private

  def user_params
    params.require(:user).permit(:name, :email, :bio)
  end

  def who_is
    @user = current_user
  end
end
