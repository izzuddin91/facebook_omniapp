class ProfilesController < ApplicationController
  before_filter :check_user



  def see_tho

  end

  def izzuddin
    
  end

  def shuk
    
  end

  private

    def check_user
    if session[:user_id].nil?
       flash[:success] = "Uh-uh, not so fast buddy. click the sign in button at the top navbar!"
  redirect_to root_path
  end
  end

end
