class ApplicationController < ActionController::Base
  protect_from_forgery
  rescue_from CanCan::AccessDenied do |exception|  
    flash[:error] = "Access denied!"  
    redirect_to root_path
  end
  def current_ability
    if current_alumni
      @current_ability ||= AlumniAbility.new(current_alumni)
    else
      @current_ability ||= UserAbility.new(current_user)
    end
  end
end
