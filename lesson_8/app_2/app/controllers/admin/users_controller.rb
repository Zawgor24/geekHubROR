class Admin::UsersController < Admin::ApplicationController
  before_action :find_user, only: %i[show update edit destroy]

  def index
    @users = User.paginate(page: params[:page], per_page: 5)
  end

  def edit
  end

  def update
    if @user.update(user_params)
      redirect_to admin_user_path(@user)
    else
      render :edit
    end
  end

  def destroy
    @users = User.paginate(page: params[:page], per_page: 5)
    @user.destroy
  end

  private

  def find_user
    @user = User.find(params[:id])
  end

  def user_params
    params.require(:user).permit(:email, :password, :avatar, :admin)
  end
end