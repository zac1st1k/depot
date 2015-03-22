class SessionsController < ApplicationController
  def new
  end

  def create
    if user = User.authenticate(params[:name], params[:password])
      session[:user_id] = user.id
      # redirect_to admin_url
      redirect_to orders_path

    else
      redirect_to login_url, :alert => "Invalid user/password combination"
    end
  end

  def destory
    session[:user_id] = nil
    redirect_to store_url, :notice => "Logged out"
  end

end
