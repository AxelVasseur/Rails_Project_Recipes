class UsersController < ApplicationController
	def index
		@users = User.all
	end

	def new
	   @user = User.new
	 end

	 def create
	   @user = User.new(user_params)
	   if @user.save
	     flash[:notice] = "User created."
	     redirect_to '/'
	   else
	     render 'signup'
	   end
	 end

	private

	 def user_params
	   params.require(:user).permit(:firstname, :lastname, :login, :password)

	end

end