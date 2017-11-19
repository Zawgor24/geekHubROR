class Admin::UsersController < Admin::ApplicationController
  before_action :current_user, only: %i[show edit update destroy]
  def index
    @users = User.paginate(page: params[:page], per_page: 5)
  end

  def new
    @user = User.new
  end

  def create
    @user = User.create(user_params)

    if @user.save
      redirect_to admin_user_path(@user)
    else
      render :new
    end
  end

  def update
    if @user.update(user_params)
      redirect_to admin_user_path(@user)
    else
      render :edit
    end
  end

  def destroy
    @user.destroy

    redirect_to admin_users_path
  end

  private

  def current_user
    @user = User.find(params[:id])
  end

  def user_params
    params.require(:user).permit(:email, :admin, :password)
  end
end