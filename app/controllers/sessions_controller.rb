class SessionsController < ApplicationController

  def new
  end

  def create
    # return redirect_to(controller: 'fans', action: 'show') if params[:name].empty?
    fan = Fan.find_by_email(params[:email])
      if fan.valid?
        session[:email] = params[:email]
        redirect_to fan_path(fan.id)
      else
        redirect_to login_path
    end
  end

  def destroy
    reset_session
    redirect_to login_path
  end

end
