class TeamsController < ApplicationController

  def create
    team = Team.create!(team_params)
    if team.save?
      redirect_to :hunt_path,notice: "well done"
    else
      render :new, notice: "did not work"
    end
  end


  private

  def team_params
    params.require(:team).permit(:path, :team_number, :hunt_id)
  end
end
