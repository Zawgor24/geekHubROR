class Admin::ApplicationController < ActionController::Base
  layout 'admin/application'

  http_basic_authenticate_with name: 'admin', password: 'admin'

  before_action :require_admin

  private

  def require_admin
    redirect_to root_path unless current_user.admin?
  end
end