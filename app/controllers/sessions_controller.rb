class SessionsController < ApplicationController
    def index
        session[:greetings] ||="Saseni"
        cookies[:greetings] ||="Saseni"
        render json: {session: session, cookies: cookies.to_hash }
    end

    def create
        # find user by email
        user = User.find_by(email: params[:email])
        # assign the user a session
        session[:user_id] = user.id
        # render user within the session
        render json: user
        # byebug
    end

    # log out
    def destroy
        # ending the session.
        session.delete(:user_id)
        head :no_content
    end
end
