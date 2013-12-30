class UsersController < ApplicationController
  def index
    @user = User.new
  end
  def create
    @user = User.new(params[:user])
    if @user.save
      redirect_to @user
    end
  end
end
