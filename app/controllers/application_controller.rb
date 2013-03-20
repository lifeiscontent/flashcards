class ApplicationController < ActionController::Base
  protect_from_forgery

  private

  def sign_in(user)
  	cookies.signed[:user_id] = user.id
  end

  def require_login
  	unless signed_in?
  		redirect_to new_session_path
  	end
  end

  def current_user
    if cookies[:user_id]
      User.find_by_id(cookies.signed[:user_id])
    end
  end

  helper_method :current_user

  def signed_in?
  	!!current_user
  end

  helper_method :signed_in?

end
