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
    if @team.check_distance_to_location(latitude, longitude)
      redirect_to hunt_team_path(hunt_id: @hunt.id, id: @team)
    else
      redirect_to hunt_team_path(hunt_id: @hunt.id, id: @team)
      flash[:notice] =  "Sorry, doesn't look like you found it yet!"
    end
  end


  private

  def latitude
    params['team']['latitude']
  end

  def longitude
    params['team']['longitude']
  end

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
