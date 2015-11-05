class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception

  def current_admin
    @_current_admin ||= Admin.find_by_id(session[:admin_id])
  end
  helper_method :current_admin

  def logged_in?
    !!current_admin
  end
  helper_method :logged_in?

  def require_admin
    unless logged_in?
      flash[:error] = "You must have administrative privileges to access this section."
      redirect_to root_path
    end
  end
end
