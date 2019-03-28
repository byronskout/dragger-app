class TeamsController < ApplicationController
  before_action :require_login, only: [:index, :show, :new, :create, :edit]

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
    @team.fan_id = current_user.id
    if @team.valid?
      @team.save
      TeamQueen.create(queen_id: params[:team][:queen], team_id: @team.id)
      redirect_to fan_path(@team.fan)
    else
      render :new
    end
  end

  def edit
    @team = Team.find(params[:id])
  end

  def update
      @team = Team.find(params[:id])
      @team.update(team_params)
      redirect_to fan_path(@team.fan)
  end

  def destroy
   Team.find(params[:id]).destroy
   redirect_to fan_path
 end

private

def team_params
  params.require(:team).permit(:team_name, :queen_ids => [])
end

def require_login
  authorized?
end

end
