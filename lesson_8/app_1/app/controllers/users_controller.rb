class UsersController < ApplicationController
  before_action :current_user, only: %i[show edit update]
  
  def update
    if @user.update(user_params)
      redirect_to @user
    else
      render :edit
    end
  end

  private

  def current_user
    @user = User.find(params[:id])
  end

  def user_params
    params.require(:user).permit(:email, :password, :avatar)
  end
end