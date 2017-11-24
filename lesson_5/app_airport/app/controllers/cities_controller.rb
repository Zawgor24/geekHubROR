class CitiesController < ApplicationController
  def index
    @cities = City.paginate(page: params[:page], per_page: 5)
  end
end