class UsersController < ApplicationController
  def new
  end

  def create
  	@user = User.create(user_name: params[:username], bio: params[:bio])
  	@user.user_name = params[:username]
  	@user.bio = params[:bio]
  	if @user.save
      redirect_to action: 'show', id: @user.user_name
      #redirect_to user_path(@user.user_name)
 	  else
      render '/users/erreur'
  	end
  end

  def show
  	@user = User.find_by(user_name: params[:id])
  end

end
