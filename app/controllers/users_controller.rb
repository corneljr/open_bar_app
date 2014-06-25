class UsersController < ApplicationController
<<<<<<< HEAD
	def new
		@user = User.new
	end

	def create
		@user = User.new(user_params)
		if @user.save
			redirect_to @user
		else
			flash.now['error']
			render :new
		end
	end

	def update
		@user = User.find(params[:id])
	end

	def show
	end

	private

	def user_params
		params.require(:users).permit(:name, :email, :type)
=======
  def new
  end

  def create
  end

  def edit
  end

  def update
  end

  def destroy
  end
>>>>>>> 3543017f105cef324c3a77805e71f3bf8416e7a3
end
