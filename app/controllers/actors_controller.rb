class ActorsController < ApplicationController
  before_action :set_actor, only: [:show, :edit, :update, :destroy]

  def index
    @actors = Actor.all
  end

  def show
    @movies = @actor.movies
  end




  private

  def set_actor
    @actor = Actor.find(params[:id])
  end

  # function used on create and update to verify params are correct
  def actor_params
    params.require(:actor).permit(:first_name,:last_name,:bio)
  end

end
