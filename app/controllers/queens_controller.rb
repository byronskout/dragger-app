class QueensController < ApplicationController

  def index
    @queens = Queen.all
  end

  def show
    @queen = Queen.find(params[:id])
  end

  def new
    @queen = Queen.new
  end

  def create
    @queen = Queen.create(queen_params)
    if @queen.valid? && @queen.save
      redirect_to new_queen_path
    else
      render :new
    end
  end

private

def queen_params
  params.require(:queen).permit(:name)
end

end
