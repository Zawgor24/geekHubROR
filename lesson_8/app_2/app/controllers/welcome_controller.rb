class WelcomeController < ApplicationController
  def index
    @teams = Team.order('victory DESC')
  end
end