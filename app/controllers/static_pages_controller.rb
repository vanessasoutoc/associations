class StaticPagesController < ApplicationController
	skip_before_action :signed_in_user

  def show
    render "static_pages/#{params[:id]}"
  end
end
