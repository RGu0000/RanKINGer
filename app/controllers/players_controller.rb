class PlayersController < ApplicationController
  before_action :set_player, only: %i[show edit update destroy]

  def index
    @players = Player.all
  end

  def show
    @player = Player.find(params[:id])
  end

  def new
    @player = Player.new
  end

  def create
    @player = Player.new(player_params)
    if @Player.save
      redirect_to @player
    else
      render 'new'
    end
  end

  def edit
    @player = Player.find(params[:id])
  end

  def update
    @player = Player.find(params[:id])
    if @player.update_attributes(player_params)
      redirect_to @player
    else
      render 'edit'
    end
  end

  def destroy
    Player.find(params[:id]).destroy
    redirect_to players_path
  end

  private

  # Use callbacks to share common setup or constraints between actions.
  def set_player
    @player = Player.find(params[:id])
  end

  # Only allow a trusted parameter "white list" through.
  def task_params
    params.require(:player).permit(:name)
  end
end