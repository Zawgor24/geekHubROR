class WaresController < ApplicationController
  def index
    @wares = Ware.all
  end
end