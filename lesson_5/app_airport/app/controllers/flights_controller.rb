class FlightsController < ApplicationController
  before_action :current_flight, only: %i[show edit update destroy]
  before_action :current_plane, only: %i[new create index]

  def index
    @flights = @plane.flights.paginate(page: params[:page], per_page: 2)
  end

  def new
    @flight = Flight.new
  end

  def create
    @flight = @plane.flights.create(flight_params)

    if @flight.save
      redirect_to @flight
    else
      render :new
    end
  end

  def update
    if @flight.update(flight_params)
      redirect_to @flights
    else
      render :edit
    end
  end

  def destroy
    @flight.destroy

    redirect_to roor_path
  end

  private

  def current_flight
    @flight = Flight.find(params[:id])
  end

  def current_plane
    @plane = Plane.find(params[:plane_id])
  end

  def flight_params
    params.require(:flight).permit(:name, :departure_at, :arrival_at,
                                   :plane_id, :city_id)
  end
end
