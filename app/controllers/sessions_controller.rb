class SessionsController < ApplicationController
  def new
  end

  def create
    user = User.find_by(Username: params[:session][:username])
    if user && user.Hash == params[:session][:password]
      log_in user
      redirect_to pages_myAppUsage_url
    else
      @datainfo = " \n Try again please!"
      render 'new'
    end
  end

  def destroy 
  end
end
