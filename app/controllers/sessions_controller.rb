class SessionsController < ApplicationController

	def new
	end

	def create
		user = User.find_by(email: params[:email])
		if user
			session[:user_id] = user.id
			redirect_to root_path, notice: 'Successfully signed in'
		else
			flash[:alert] = 'Log in credentials incorrect'
			render :new
		end
	end

	def destroy
	end

end
