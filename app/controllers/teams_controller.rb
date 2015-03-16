class TeamsController < ApplicationController
  before_action :set_hunt

  def index
    @teams = @hunt.teams
  end

  def show
    @team = Team.find(params[:id])
  end


  private

  def set_hunt
    @hunt = Hunt.find(params[:hunt_id])
  end

  def team_params
    params.require(:team).permit(:path, :team_number, :hunt_id)
  end
end
