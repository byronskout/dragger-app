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
    if @team.valid?
      @team.save
      TeamQueen.create(queen_id: params[:team][:queen], team_id: @team.id)
      redirect_to new_team_path
    else
      render :new
    end
  end

  def destroy
   Team.find(params[:id]).destroy
   redirect_to teams_path
 end

private

def team_params
  params.require(:team).permit(:team_name, :fan_id, :queen_ids => [])
end

end
