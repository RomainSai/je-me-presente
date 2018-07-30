class UsersController < ApplicationController
  def new
  end

  def create
  	@user = User.create
  	@user.user_name = params[:username]
  	@user.bio = params[:bio]
  	if @user.save
      redirect_to user_path(@user.user_name)
 	  else
      render '/users/erreur'
  	end
  end

  def show
  	@user = User.find_by(params[:username])
  end

end
