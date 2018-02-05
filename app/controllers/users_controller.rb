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
    if user.valid? && user.save
      @msg = "User Saved successfully!!"
    else
      @msg = user.errors.full_messages
    end
    # byebug
    @users = User.all
    # redirect_to :controller=> "users", :action => "index"
        
      render 'index'    
  end


  def delete
    id = params[:id]
    user = User.find_by_id(id)
    if user && user.destroy!
      redirect_to :action => "index"
    else
      redirect_to :action => "index"
    end
  end


  def show
    
  end
end
