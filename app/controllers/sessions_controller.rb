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
		session[:user_id] = nil
  	redirect_to products_url, :notice => "Logged out!"
	end

end
