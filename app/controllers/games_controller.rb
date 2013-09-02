class GamesController < ApplicationController
  def index
    @games = Game.find(:all)
  end

  def new
    @game = Game.new
  end

  def create
    @game = Game.new(params[:game])
    if @category.save
      flash[:notice] = "Here you go!"
      redirect_to @game
    else
      flash[:notice] = "Something about that didn't work, unfortunately."
      render :action => new
  end

  def show
    @game = Game.find(params[:id])
  end
end
