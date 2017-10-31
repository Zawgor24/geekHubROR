class SmartphonesController < ApplicationController
  before_action :current_smartphone, only: [:show, :edit, :update, :destroy]

  def index
    @smartphones = Smartphone.all
  end

  def new
    @smartphone = Smartphone.new
  end

  def create
    @smartphone = Smartphone.new(smartphone_params)

    if @smartphone.save
      redirect_to @smartphone
    else
      render :new
    end
  end

  def update
    if @smartphone.update(current_smartphone)
      redirect_to @smartphone
    else
      render :edit
    end
  end

  def destroy
    @smartphone.destroy
    redirect_to smartphones_path
  end

  private

  def current_smartphone
    @smartphone = Smartphone.find(params[:id])
  end

  def smartphone_params
    params.require(:smartphone).permit(:model, :price, :characteristic)
  end
end