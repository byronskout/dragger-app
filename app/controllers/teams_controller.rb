class TeamsController < ApplicationController

  def index
    @teams = Team.all
  end

  def show
    @team = Team.find(params[:id])
  end

  def new
    @team = Team.new
  end

  def create
    @team = Team.create(team_params)
    if @team.valid? && @team.save
      redirect_to new_team_path
    else
      render :new
    end
  end

private

def team_params
  params.require(:team).permit(:name)
end

end
