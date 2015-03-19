class ActivationsController < ActionController::Base

  before_action :set_hunt

  def new
  end

  def create
    @hunt.activate(params[:number_of_teams].to_i)
    redirect_to hunts_path
  end

  def destroy
    @hunt.deactivate
    redirect_to hunts_path
  end

  private

  def set_hunt
    @hunt = Hunt.find(params[:hunt_id])
  end

end