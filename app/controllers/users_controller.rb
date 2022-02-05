class UsersController < ApplicationController
    skip_before_action :authenticate_request
    def show
        user = User.find(params[:id])
        render json: user
    end

    def create
        user = User.create(user_params)
        if user.valid?
            user = user
            token = JsonWebToken.encode(user_id: user.id)

            render json: {user: user, token: token}
        else
            render json: {errors: user.errors.full_messages}
        end
    end

    def update
        user = User.find(params[:id])
        user.update(user_params)
        render json: user
    end

    def destroy
        user = User.find(params[:id])
        user.destroy
    end

    private

    def user_params
        params.permit(:email, :password)
    end

end