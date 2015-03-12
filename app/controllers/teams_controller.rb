class TeamsController < ApplicationController

  def index
    @teams = Team.where(hunt_id: params[:hunt_id])
  end

  def new
    @team = Team.new
  end

  def create
    @team = Team.create!(team_params)
    if @team.save
      redirect_to @team, notice: "well done"
    else
      render :new, notice: "did not work"
    end
  end

  def show
    @team = Team.find(params[:id])
  end


  private

  def team_params
    params.require(:team).permit(:path, :team_number, :hunt_id)
  end
end