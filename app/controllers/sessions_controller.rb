class SessionsController < ApplicationController
    before_action :signed_in_user, only: :destroy

    def new
        if signed_in?
            redirect_to root_url
        end
    end

    def create
        user = User.find_by(email: params[:session][:email].downcase)
        if user && user.authenticate(params[:session][:password])
            sign_in user
            redirect_to root_url
        else
            flash.now[:danger] = "Invalid email/password combination"
            render "new"
        end
    end

    def destroy
        sign_out
        redirect_to signin_url
    end
end
