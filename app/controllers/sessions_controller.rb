class SessionsController < ApplicationController
  def new
  end

  def create
  	user = User.find_by_email(params[:session][:email].downcase)
	  if user && user.authenticate(params[:session][:password])
	    sign_in user
	  else
      flash[:error] = "Something went wrong. Please try again."
	    redirect_to signin_path
	  end
  end

  def destroy
  	sign_out
  end
end
