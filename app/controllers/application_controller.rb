class ApplicationController < ActionController::Base
  helper_method :current_user, :logged_in?

  def current_user
   if session[:fan_id]
     Fan.find(session[:fan_id])
   else
     Fan.new
   end
 end

 def logged_in?
   !!current_user.id
 end

 def authorized?
   if !logged_in?
     flash[:errors] = ["you are not logged in"]
     redirect_to login_path and return  # double redirect safeguard
   end
 end

 def authorized_for(target_user_id)
  if current_user.id != target_user_id.to_i
    flash[:errors] = ["You cannot view a page that does not belong to you!"]
    redirect_to fans_path
  end
end

end
