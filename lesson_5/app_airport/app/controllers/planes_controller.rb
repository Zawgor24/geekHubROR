class PlanesController < ApplicationController
  before_action :current_city, only: %i[create new index]
  before_action :current_plane, only: %i[show]
  def index
    @planes = @city.planes.paginate(page: params[:page], per_page: 2)
  end

  def new
    @plane = Plane.new
  end

  def create
    @plane = @city.planes.create(plane_params)

    if @plane.save
      redirect_to city_planes_path(@city)
    else
      render :new
    end
  end

  private

  def current_city
    @city = City.find(params[:city_id])
  end

  def current_plane
    @plane = Plane.find(params[:id])
  end

  def plane_params
    params.require(:plane).permit(:name, :places, :image, :city_id)
  end
end