class TablesController < ApplicationController
  before_action :current_table, only: [:update, :show, :destroy, :edit]
  
  def index
    @tables = Table.all
  end

  def new
    @table = Table.new
  end

  def create
    @table = Table.new(table_params)

    if @table.save
      redirect_to @table
    else
      render :new
    end
  end

  def update
    if @table.update(table_params)
      redirect_to @table
    else
      render :edit
    end
  end

  def destroy
    @table.destroy

    redirect_to tables_path
  end

  private

  def current_table
    @table = Table.find(params[:id])
  end

  def table_params
    params.require(:table).permit(:color, :amount)
  end
end