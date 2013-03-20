class SessionsController < ApplicationController
  def new
  end

  def create
  	user = User.find_by_username(params[:session][:username])
               .authenticate(params[:session][:password])
  	if user
  		sign_in user
  	end
  	redirect_to decks_path
  end

  def destroy
  	cookies.delete(:user_id)
  	redirect_to root_path
  end
end
