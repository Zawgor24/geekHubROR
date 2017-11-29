class Admin::UsersController < Admin::ApplicationController
  before_action :get_users, only: [:index, :destroy]
  before_action :find_user, only: [:show, :update, :edit, :destroy]

  def update
    if @user.update(user_params)
      redirect_to admin_user_path(@user)
    else
      render :edit
    end
  end

  def destroy
    @user.destroy
  end

  private

  def find_user
    @user = User.find(params[:id])
  end

  def get_users
    @users = User.paginate(page: params[:page], per_page: 5)
  end

  def user_params
    params.require(:user).permit(:email, :password, :admin, :avatar)
  end
end