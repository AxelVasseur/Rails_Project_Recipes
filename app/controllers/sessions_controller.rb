class SessionsController < ApplicationController
	def create
	  user = User.find_by(login: params[:session][:login].downcase)
	  if user && user.authenticate(params[:session][:password])
	    session[:user_id] = user.id
	    flash[:notice] = "Logged in successfully."
	    redirect_to '/home'
	  else
	    flash.now[:alert] = "There was something wrong with your login details."
	    render 'login'
	  end
	end

	def destroy
	  session[:user_id] = nil
	  flash[:notice] = "You have been logged out."
	  redirect_to root_path
	end

	def home
		require File.join(Rails.root, 'parseJson.rb');

		$recipes = read_recipes
	end
end
