class TeamsController < ApplicationController
  before_action :set_hunt
  before_action :set_team, only: [:update, :show]

  def index
    @teams = @hunt.teams
  end

  def show
    @team = Team.find(params[:id])
  end

  def update
    binding.pry
  end


  private

  def set_hunt
    @hunt = Hunt.find(params[:hunt_id])
  end

  def set_team
    @team = Team.find(params[:id])
  end

  def team_params
    params.require(:team).permit(:path, :team_number, :hunt_id)
  end
end
