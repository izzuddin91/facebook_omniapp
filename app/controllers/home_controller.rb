class HomeController < ApplicationController
  def index
  end

  def profile
  end

  private

  def set_auth
  	@auth = session[:omniauth] if session[:omniauth]
  end
end
