class UsersController < ApplicationController

	def index
	end

	def show
		@user = Show.find(params[:id])
	end

	def new
		@user = User.new
		if 
		@is_signup = true
		redirect_to show_user_path
		else
		redirect_to new_user_path
		end	
	end

	def create
		@user = User.new(params.require(:user).permit(:name, :email, :location))
		if @user.save
			redirect_to songs_path
		else
			redirect_to new_user_path
		end
	end

	def edit
	end

	def update
	end

	def destroy
		User.find(params[:id]).destroy
		redirect_to users_path
	end

end
