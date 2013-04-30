class ApplicationController < ActionController::Base
  protect_from_forgery

  def not_authentificated
  	redirect_to login_url, :alert => "primero debes loguearte para entrar"
  end
end
