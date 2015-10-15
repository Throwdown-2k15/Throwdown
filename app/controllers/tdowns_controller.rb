class TdownsController < ApplicationController
  before_filter :authenticate_user!

  def index
    @tdowns = Tdown.all
  end

  def show
  end

  def new
  end

  def create
    @tdown = Tdown.create(tdown_params.merge(user: current_user))
    redirect_to dashboard_path(current_user)
  end

  def destroy
  end

  def edit
  end

  private
  def tdown_params
    params.require(:tdown).permit(:name, :time, :location, :details,:startx, :starty, :finishx, :finishy)
  end
end

