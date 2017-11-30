class ApplicationController < ActionController::Base
   before_action :configure_permitted_parameters, if: :devise_controller?

  protect_from_forgery with: :exception

  before_action :authenticate_user!

  before_action :edit_user, only: [:show]

  private

  def edit_user
    redirect_to edit_user_path(current_user) unless current_user.name? &
                                                    current_user.second_name?
  end

  def configure_permitted_parameters
    devise_parameter_sanitizer.permit(:sign_up) { |u| u.permit(:email, :password,
      :password_confirmation, :remember_me, :avatar) }
    devise_parameter_sanitizer.permit(:account_update) { |u| u.permit(:email, :password,
      :password_confirmation, :current_password, :avatar) }
  end
end
