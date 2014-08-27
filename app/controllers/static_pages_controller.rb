class StaticPagesController < ApplicationController
	skip_before_action :signed_in_user

	def about
		render
	end
	
	def contact
		render
	end
end
