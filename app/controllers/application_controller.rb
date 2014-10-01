class ApplicationController < ActionController::Base
  protect_from_forgery
  def admin
    
  end
    def after_sign_in_path_for(resource)
      if resource.role = "admin"
         
      request.env['omniauth.origin'] || stored_location_for(resource) || admin_path
      
    end
 #   if rosource.role = "university" 
  #    request.env['omniauth.origin'] || stored_location_for(resource) || university_path
   # end
   
#   if rosource.role = "alumni" 
 #    request.env['omniauth.origin'] || stored_location_for(resource) || alumni_path
  # end
  end
end
