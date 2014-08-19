class SessionsController < ApplicationController
	def new
		@user = User.new
		@is_login = true
		if current_user
			redirect_to users_path(@user)
		end
	end

	def create
		u = User.where(email: params[:user][:email]).first
		if u && u.authenticate(params[:user][:password])
			session[:user_id] = u.id.to_s
			redirect_to users_path(@user)
		else
			redirect_to new_session_path
		end
	end

	def destroy
		reset_session
		redirect_to home_path
	end
end
