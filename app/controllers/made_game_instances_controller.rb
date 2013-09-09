class MadeGameInstancesController < ApplicationController
  before_filter :find_made_game

  def new
    @made_game_instance = @made_game.made_game_instances.build
  end

  def create
    @made_game_instance = @made_game.made_game_instances.build(params[:made_game_instance])
    if @made_game_instance.save
      flash[:notice] = "Here you go, a new made game instance!"
      redirect_to [@made_game, @made_game_instance]
    else
      flash[:alert] = "Didn't work!"
      render :action => "new"
    end
  end

  def show
    @made_game_instance = MadeGame.find(params[:id])
  end

  private
    def made_game_instance_params
      params.require(:made_game_instance).permit!
    end
end
