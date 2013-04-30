class SessionsController < ApplicationController
  def new

  end

  def create
  	user = login(params[:username], params[:password], params[:remember_me])
  	if user
		redirect_back_or_to root_url, :notice => "logged in!!"
	else
		flash.now.alert = "el email o el password es invalido"
		render new	  		
  	end
  end

  def destroy
  	logout
  	redirect_to root_url, notice: "logged uot!!"
  end
end
