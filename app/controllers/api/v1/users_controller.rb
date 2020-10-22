class Api::V1::UsersController < ApplicationController
    def show
        user = User.find(params[:id])
        json_string = UserSerializer.new(user).serializable_hash
        render json: json_string
    end

    def create
        user = User.create(user_params)

        render json: user, only: [:name, :weight]
    end

    def update
        user = User.find(params[:id])

        user.update(user_params)
    end

    def index
    users = User.all
    

    # def users_exercises
    #     for user.days where exercise
    # end

    render json: users
    end

    private
    def user_params
        params.require(:user).permit(:name, :weight)
    end
end
