class SportsmenController < ApplicationController
 before_action :current_sportsman, only: [:update, :show, :destroy, :edit]
  
  def index
    @sportsmen = Sportsman.all
  end

  def new
    @sportsman = Sportsman.new
  end

  def create
    @sportsman = Sportsman.new(sportsman_params)

    if @sportsman.save
      redirect_to @sportsman
    else
      render :new
    end
  end

  def update
    if @sportsman.update(sportsman_params)
      redirect_to @sportsman
    else
      render :edit
    end
  end

  def destroy
    @sportsman.destroy

    redirect_to sportsmen_path
  end

  private

  def current_sportsman
    @sportsman = Sportsman.find(params[:id])
  end

  def sportsman_params
    params.require(:sportsman).permit(:name, :sport, :rank)
  end
end