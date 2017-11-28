class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception

  before_action :authenticate_user!

  before_action :edit_user, only: [:show]

  private

  def edit_user
    redirect_to edit_user_path(current_user) unless current_user.name? &
                                                    current_user.second_name?
  end
end
