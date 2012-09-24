class ApplicationController < ActionController::Base
  protect_from_forgery

private

  def current_user
    @current_user ||= User.find(session[:user_id]) if session[:user_id]
  end
  helper_method :current_user

  def login_required
    !!current_user || access_denied
  end

  def admin_login_required
    current_user.try(:admin?) || access_denied
  end

  def access_denied
    respond_to do |format|
      format.html do
        redirect_to root_path
      end
    end
  end
end
