class DirectoriesController < ApplicationController
  before_action :current_directory, only: [:show, :update, :edit, :destroy]
  
  def index
    @directories = Directory.all
  end

  def new
    @directory = Directory.new
  end

  def create
    @directory = Directory.new(directory_params)

    if @directory.save
      redirect_to @directory
    else
      render :new
    end
  end

  def update
    if @directory.update(directory_params)
      redirect_to @directory
    else
      render :edit
    end
  end

  def destroy
    @directory.destroy
    redirect_to directories_path
  end

  private

  def current_directory
    @directory = Directory.find(params[:id])
  end

  def directory_params
    params.require(:directory).permit(:name, :address, :phone_number)
  end
end