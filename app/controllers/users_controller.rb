class UsersController < ApplicationController
  def index
    @users = User.all
  end
  
  def show
     @users = User.find(params[:id])
    #binding.pry
    #raise
  end
  
end
