class UsersController < ApplicationController
  # login user within the session.
  def show
    # find the user by id to see if the session exists.
    user = User.find_by(id: session[:user_id])
    # if the session exists take the user to the session.else return error
    if user
      render json: user
    else
      render json: {error: "User not found"},status: :not_authorized
    end
  end
end
