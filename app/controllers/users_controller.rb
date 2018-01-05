class UsersController < ApplicationController
  def index
    # render 'show'
    # redirect_to :controller=> "users", :action => "show"
    @users = User.all

  end

  def create
    # puts params.inspect
    # if params[:controller] == "users"
    # end
    # exit!
    email = params[:email]
    username = params[:username]
    user = User.new
    user.email = email
    user.username = username
    if user.save
      @msg = "User Saved successfully!!"
    else
      @msg = "Error while saving user"
    end
    @users = User.all
    # redirect_to :controller=> "users", :action => "index"
        
      render 'index'    
  end

  def show
    
  end
end
