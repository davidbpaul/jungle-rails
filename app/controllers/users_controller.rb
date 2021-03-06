class UsersController < ApplicationController
  def new
  end
  def create
    user = User.new(user_params)
    @user = user
    if user.save
      UserMailer.welcome_email(@user).deliver_now
      session[:user_id] = user.id
      redirect_to '/'
    else
      redirect_to '/signup'
    end
  end
  def user_params
    params.require(:user).permit(:first_name, :last_name, :email, :password)
  end
end
