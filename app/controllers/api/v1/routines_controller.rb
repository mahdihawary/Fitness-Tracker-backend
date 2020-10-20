class Api::V1::RoutinesController < ApplicationController
    def create
        routine = Routine.create(routine_params)
        render json: routine
    end

    def show
        routine = Routine.find(params[:id])
        render json: routine
    end

    def update
        routine = Routine.find(params[:id])

        routine.update(routine_params)
    end

    def index
        routines = Routine.all

        render json: routines
    end

    private
    def routine_params
        params.require(:routine).permit(:name, :user_id)
    end
end
