class PlayersController < ApplicationController
  before_action :find_player, only: %i[show destroy]
  before_action :find_user, only: [:new, :create]
  def index
    @players = Player.order('rating DESC')
  end

  def show
    
  end

  def new
    @player = Player.new
  end

  def create
    @player = current_user.create_player(player_params.merge(name: current_user.name,
                                          second_name: current_user.second_name,
                                          avatar: current_user.avatar))

    if @player.save
      redirect_to players_path
      else
      render :new
    end
  end

  def destroy
    @player.destroy

    redirect_to players_path
  end

  private

  def find_user
    @user = User.find(params[:user_id])
  end

  def find_player
    @player = Player.find(params[:id])
  end

  def player_params
    params.require(:player).permit(:name, :second_name, :rating, :age,
                                   :country, :user_id, :avatar)
  end
end