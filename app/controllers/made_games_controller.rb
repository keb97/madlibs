class MadeGamesController < ApplicationController
  before_filter :find_made_game, :only => [:show]

  def index
    @made_games = MadeGame.find(:all)
  end

  def new
    @made_game = MadeGame.new
  end

  def create
    @made_game = MadeGame.new(made_game_params)
    if @made_game.save
      flash[:notice] = "Here you go!"
      redirect_to @made_game
    else
      flash[:notice] = "Something about that didn't work, unfortunately."
      render :action => new
    end
  end

  def show
    @made_game = MadeGame.find(params[:id])
  end

  private
    def made_game_params
      params.require(:made_game).permit!
    end

    def find_made_game
      @made_game = MadeGame.find(params[:id])
      rescue ActiveRecord::RecordNotFound
      flash[:alert] = "This game doesn't exist, sorry!"
      redirect to games_index
    end
end
