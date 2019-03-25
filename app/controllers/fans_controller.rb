class FansController < ApplicationController

  def index
    @fans = Fan.all
  end

  def show
    @fan = Fan.find(params[:id])
  end

  def new
    @fan = Fan.new
  end

  def create
    @fan = Fan.create(fan_params)
    if @fan.valid? && @fan.save
      redirect_to new_fan_path
    else
      render :new
    end
  end

  def destroy
   Fan.find(params[:id]).destroy
   redirect_to fans_path
 end

private

def fan_params
  params.require(:fan).permit(:name)
end
end
