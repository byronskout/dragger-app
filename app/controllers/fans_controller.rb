class FansController < ApplicationController
  # before_action :require_login

  def index
    @fans = Fan.all
  end

  def show
   authorized_for(params[:id])
   @fan = Fan.find(params[:id])
 end

  def new
    @fan = Fan.new
  end

  def create
    @fan = Fan.new(fan_params)
    if @fan.valid?
       @fan.save!
       session[:fan_id] = @fan.id
      redirect_to @fan
    else
      flash[:errors] = ['something went wrong, try again']
      redirect_to signup_path
    end
  end

  def destroy
   Fan.find(params[:id]).destroy
   redirect_to fans_path
 end

private

  def fan_params
    params.require(:fan).permit(:name, :password, :email)
  end
  
  def require_login
    authorized?
  end
end
