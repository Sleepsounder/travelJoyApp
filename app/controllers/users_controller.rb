class UsersController < ApplicationController
  def new
  end

  def create
    user = User.save
  end
end
