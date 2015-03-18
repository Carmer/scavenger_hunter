module ApplicationHelper

  def hunt_over?
    team = Team.find(params[:id])
    team.hunt_over?
  end
end
