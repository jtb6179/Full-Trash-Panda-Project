class UsersController < ApplicationController

    def create
        @user = User.create(
            username: params[:username],
            # password: params[:password]
        )
    end

    def destroy
        user = user.find(params[:id])
        user.destroy
        render json: { message: "Rocco will be very sad to see you go, but He likely stole your information anyway!" }
    end

end
