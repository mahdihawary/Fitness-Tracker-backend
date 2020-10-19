class Api::V1::UsersController < ApplicationController
    def show
        user = User.find(params[:id])
        render json: user, only: [:name, :weight]
    end

    def create
        user = User.create(user_params)
        
        render json: user, only: [:name, :weight]
    end

    def update
        user = User.find(params[:id])

        user.update(user_params)
    end

    private
    def user_params
        params.require(:user).permit(:name, :weight)
    end
end
