class TeamQueensController < ApplicationController

  def index
    @team_queens = TeamQueen.all
  end

  def show
    @team_queen = TeamQueen.find(params[:id])
  end

  def new
    @team_queen = TeamQueen.new
  end

  def create
    @team_queens = TeamQueen.create(team_queen_params)
    if @team_queen.valid? && @team_queen.save
      redirect_to new_team_queen_path
    else
      render :new
    end
  end

private

def team_queen_params
  params.require(:team_queen).permit(:team_id, :queen_id)
end

end
