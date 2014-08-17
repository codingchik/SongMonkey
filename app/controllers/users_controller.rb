class UsersController < ApplicationController

	def index
		@users = User.all
	end
	
	def new
		@user = User.new
		@is_signup = true
	end
	
	def create
		@user = User.new(params.require(:user).permit(:name, :email, :location, :password, :password_confirmation, :image))
		if @user.save
			session[:user_id] = @user.id.to_s
			redirect_to users_path(@user)
		else
			render "new"
		end
	end

	def show
		@user = User.find(params[:id])
	end

	def edit
	end

	def update
		
	end

	def destroy

	end

end
