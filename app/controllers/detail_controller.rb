class DetailController < ApplicationController
  def index
    @futsal_id = params[:place_id]
    @futsal_place = params[:place_name]
    @lapangan = Lapangan.where(id_tempat_futsal: @futsal_id).as_json
  end
end
