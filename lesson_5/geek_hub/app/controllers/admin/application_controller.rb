class Admin::ApplicationController < ActionController::Base
  http_basic_authenticate_with name: 'admin', password: 'admin'

  layout 'admin/application'
end