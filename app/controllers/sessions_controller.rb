class SessionsController < ApplicationController

    def create 
        user = User.find_by(username: params[:username])
        # creating a session for the user
        session[:user_id]= user.id
        render json: user
    end

    def destroy
        session.delete :user_id
        head :no_content
    end

end
