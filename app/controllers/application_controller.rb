class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception
  helper_method :current_user, :logged_in?
  def login!(user)
    user.reset_session_token!
    session[:session_token] = user.session_token
  end

  def logged_in?
    current_user != nil
  end

  def logout!
    current_user.try(:reset_session_token!)
    session[:session_token] = nil
  end

  def current_user
    @current_user ||= User.find_by_session_token(session[:session_token])
  end

  def user_params
    params.require(:user).permit(:email, :password)
  end
end
