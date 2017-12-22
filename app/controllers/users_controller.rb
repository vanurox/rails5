class UsersController < ApplicationController
  def index
    # render 'show'
    redirect_to :controller=> "users", :action => "show"
  end

  def show
    
  end
end
