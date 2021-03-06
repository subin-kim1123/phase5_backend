class UsersController < ApplicationController
    before_action :authorized, only: [:me]
    before_action :find_user, only: [:destroy]

    def login
        user = User.find_by(username: params[:username])
        if user && user.authenticate(params[:password])
            wristband = encode_token({user_id: user.id})
            render json: {user: UserSerializer.new(user), token: wristband}
        else
            render json: {error: "You done login"}
        end
    end

    def me
        wristband = encode_token({user_id: @user.id})
        render json: {user: UserSerializer.new(@user), token: wristband}
    end

    def create
        user = User.create(user_params)
        if user.valid?
            wristband = encode_token({user_id: user.id})
            render json: {user: UserSerializer.new(user), token: wristband}
        else
            render json: {errors: user.errors.full_messages}
        end
    end

    def destroy
        @user.destroy
        render json: @user
    end

    private

    def user_params
        params.permit(:username, :password)
    end

    def find_user
        @user = User.find(params[:id])
    end
end
