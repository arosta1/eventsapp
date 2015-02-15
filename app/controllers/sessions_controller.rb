class SessionsController < ApplicationController
  def new
  end

  def create
    user = User.find_by_name(params[:name])	
   if user && user.authenticate(params[:password]) 			
   session[:user_id] = user.id
   redirect_to user		
   else  	 		
	flash.now[:error] = "Invalid Name/Password Combination"      	
	render 'new'		           
    end
  end

  def destroy
     if signed_in?
		session[:user_id] = nil					
     else
		flash[:notice] = "Please Sign In"			
     end
	redirect_to signin_path
  end
end
