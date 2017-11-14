class TicketsController < ApplicationController
  before_action :current_ticket, only: %i[show edit update destroy]
  before_action :current_flight, only: %i[new create index]

  def index
    @tickets = @flight.tickets.paginate(page: params[:page], per_page: 2)
  end

  def new
    @ticket = Ticket.new
  end

  def create
    @ticket = @flight.tickets.create(ticket_params.merge(user: current_user))

    if @ticket.save
      redirect_to @ticket
    else
      render :new
    end
  end

  def update
    if @ticket.update(ticket_params)
      redirect_to @tickets
    else
      render :edit
    end
  end

  def destroy
    @ticket.destroy

    redirect_to roor_path
  end

  private

  def current_ticket
    @ticket = Ticket.find(params[:id])
  end

  def current_flight
    @flight = Flight.find(params[:flight_id])
  end

  def ticket_params
    params.require(:ticket).permit(:place, :place_type, :user_id, :flight_id)
  end
end