class HuntsController < ApplicationController
  before_action :set_hunt, only: [:show, :edit, :destroy, :update]


  def index
    @hunts = current_user.hunts
  end

  def new
    @hunt      = Hunt.new
    @locations = current_user.locations
  end

  def create
    if create_with_teams
      redirect_to hunt_path(@hunt), notice: "well done"
    end
  end

  def edit
    @locations = current_user.locations
  end

  def update
    if @hunt.update_attributes(hunt_params)
      redirect_to hunt_path(@hunt)
    else
      render :edit, notice: "Hunt could not be updated. Try again."
    end
  end

  def destroy
    if @hunt.destroy
      redirect_to hunts_path
    else
      redirect_to hunts_path, notice: "Hunt could not be destroyed. Try again."
    end
  end

  private

  def create_with_teams
    Hunt.transaction do
      @hunt = current_user.hunts.create(hunt_params)
      @hunt.make_teams(params[:number_of_teams].to_i)
    end
  end

  def set_hunt
    @hunt = Hunt.find(params[:id])
  end

  def hunt_params
    params.require(:hunt).permit(:name, master_path: [])
  end

end
