class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception
  helper_method :current_user, :logged_in?

  # Atibui o usuario atual ao session storage.
  def current_user
    @current_user ||= User.find(session[:user_id]) if session[:user_id]
  end

  # Retorna se o usuario está ou nao logado.
  def logged_in?
    !!current_user
  end
end
