class TicketsController < ApplicationController 
  before_action :authorize, only: [:create, :new]
  before_action :current_ticket, only: [:show, :destroy]
  before_action :current_flight, only: [:new, :create, :index]

  def index
    @tickets = Ticket.all
  end

  def new
    @ticket = current_user.build_ticket
  end

  def create
    @ticket = current_flight.tickets.create(ticket_params.merge(user: current_user))

    if @ticket.save
      redirect_to flight_tickets_path
    else
      render :new
    end
  end

  def destroy
    @ticket.destroy
    redirect_to flight_ticket_path(@ticket)
  end

  private

  def ticket_params
    params.require(:ticket).permit(:place, :place_type, flight_id: current_flight)
  end

  def current_ticket
    @ticket = Ticket.find(params[:id])
  end

  def current_flight
    @flight = Flight.find(params[:flight_id])
  end
end