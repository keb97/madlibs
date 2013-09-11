class MadeGameInstancesController < ApplicationController
  before_filter :find_made_game
  before_filter :find_made_game_instance, :only => [:show]

  def new
    @made_game_instance = @made_game.made_game_instances.build
  end

  def create
    @made_game_instance = @made_game.made_game_instances.build(made_game_instance_params)
    if @made_game_instance.save
      flash[:notice] = "Here you go, a new made game instance!"
      redirect_to [@made_game, @made_game_instance]
    else
      flash[:alert] = "Didn't work!"
      render :action => "new"
    end
  end

  def show
  end

  private
    def made_game_instance_params
      params.require(:made_game_instance).permit!
    end

    def find_made_game
      @made_game = MadeGame.find(params[:made_game_id])
    end

    def find_made_game_instance
      @made_game_instance = @made_game.made_game_instances.find(params[:id])
    end
end
