class ApplicationController < ActionController::Base
	# Prevent CSRF attacks by raising an exception.
	# For APIs, you may want to use :null_session instead.
	protect_from_forgery with: :exception

	include SessionsHelper

	def signed_in_user
		unless signed_in?
			flash[:warning] = "You must be signed in to access the requested option."
			redirect_to signin_url
		end
	end
end
