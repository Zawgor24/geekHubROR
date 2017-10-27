class CatsController < ApplicationController
  before_action :current_cat, only: [:show, :update, :edit, :destroy] 
  def index
    @cats = Cat.all
  end

  def new
    @cat = Cat.new
  end

  def create
    @cat = Cat.new(cat_params)

    if @cat.save
      redirect_to @cat
    else
      render :new
    end
  end

  def update
    if @cat.update(cat_params)
      redirect_to @cat
    else
      render :edit
    end
  end

  def destroy
    @cat.destroy

    redirect_to cats_path
  end

  private

  def current_cat
    @cat = Cat.find(params[:id])
  end

  def cat_params
    params.require(:cat).permit(:name, :age)
  end
end