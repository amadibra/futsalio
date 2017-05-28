class SessionsController < ApplicationController
  skip_before_filter :verify_authenticity_token
  include SessionsHelper
  def new
    redirect_to "home/index"
  end

  def create
    user = User.find_by(username: params[:session][:username].downcase)
    if user && user.authenticate(params[:session][:password])
      flash.now[:notice] = 'login success'
      # render 'home/index'
      log_in user
      redirect_to :controller => 'home', :action => 'index'
      return
    else
      flash.now[:danger] = 'Invalid email/password combination'
      render 'register/index'
    end
  end

  def destroy
    log_out
    redirect_to root_url
  end
end
