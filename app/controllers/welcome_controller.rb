class WelcomeController < ApplicationController
  def show
  	if signed_in?
  		redirect_to decks_path
  	end
  end
end
