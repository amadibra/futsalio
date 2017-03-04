class RegisterController < ApplicationController
  def index
    flash.keep
    flash[:notice] = flash[:notice]
  end

  def save
    @user = User.new(:username => params[:username], :password => params[:user_password])
    if @user.save
      flash[:notice] = "Register Success."
      render "home/index"
    else
      flash[:notice] = "Register Failure."
      render "home/index"
    end
    # # render plain: params[:user_password].inspect
    # redirect_to home#index, :flash => { :notice => "Insufficient rights!" }
  end
end
