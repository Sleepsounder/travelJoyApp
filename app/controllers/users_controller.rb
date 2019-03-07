class UsersController < ApplicationController
  def new
    @user = User.new 
    puts "********new action************"
  end

  def create
    @user = User.new(user_params)
    puts "************create action************"

    if @user.save
      redirect_to @user
    else
      redirect_to new_user_path
    end 
  end

  private 

  def user_params
    params.require(:user).permit(:first_name, :last_name, :email, :password_digest)
  end
end

