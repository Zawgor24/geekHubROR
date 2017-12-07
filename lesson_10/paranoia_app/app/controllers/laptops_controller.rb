class LaptopsController < ApplicationController
  def index
    @laptops = Laptop.all
  end

  def new
    @laptop = Laptop.new
  end

  def create
    @laptop = Laptop.new(laptop_params)

    if @laptop.save
      redirect_to laptops_path
    else
      render :new
    end
  end

  private

  def laptop_params
    params.require(:laptop).permit(:name, :price, :model)
  end
end