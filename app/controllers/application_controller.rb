class ApplicationController < ActionController::Base
  protect_from_forgery
  include ApplicationHelper
  
  def authorise
    unless signed_in? 
		redirect_to signin_path, :notice =>"Please sign in to access this page."
	end
  end
 
  def security
    unless is_admin?
	    redirect_to signin_path, :notice =>"You Do Not Have Sufficient Privileges To Access This Page"
	end
  end	
end
