class ListController < ApplicationController
  def index
  end

  def search
    @tempat_futsal = TempatFutsal.where(nama: params[:place_name])
    # render 'books/show', :locals => {:resource => 'Some text'}

    redirect_to list_index_path(:place_name => @tempat_futsal.as_json)
  end
end
