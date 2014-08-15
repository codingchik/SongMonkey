class UsersController < ApplicationController

	def index
		@users = User.all
	end
	
	def new
		@user = User.new
		@is_signup = true
	end
	
	def create
		@user = User.new(params.require(:user).permit(:name, :email, :location, :password, :password_confirmation))
		if @user.save
			session[:user_id] = @user.id.to_s
			redirect_to users_path(@user), notice: "Thank you for signing up"
		else
			render "new"
		end
	end

	def show
		@user = User.find(params[:id])
		# @user.song = current_user.song
	end

	def edit
	end

	def update
		
	end

	def destroy

	end

end
