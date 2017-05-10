class BookController < ApplicationController
  def index
    @futsal_place = params[:place]
  end
end
