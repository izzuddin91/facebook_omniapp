class SessionsController < ApplicationController
		def create
		byebug
		auth = request.env["omniauth.auth"]
		session[:omniauth] = auth.except("extra")
		user = User.sign_in_from_omniauth(auth)
		session[:user_id] = user.id
		redirect_to root_url,  notice: "signed_in"
	end

	def destroy
		session[:omniauth] = nil
		session[:user_id] = nil
		redirect_to root_url, notice: "signed_out"
		
	end
end
