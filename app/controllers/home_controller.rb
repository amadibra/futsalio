class HomeController < ApplicationController
  def index
    flash.keep
    flash[:notice] = flash[:notice]
  end
end
