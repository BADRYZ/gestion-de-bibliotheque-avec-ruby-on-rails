class ApplicationController < ActionController::Base
  include SessionsHelper
  helper_method :current_admin

  def current_admin
    @current_admin ||= Admin.find(session[:admin_id]) if session[:admin_id]
  end

  def authenticate_admin!
    redirect_to login_path, alert: 'You must be logged in to access this section' unless current_admin
  end
end
