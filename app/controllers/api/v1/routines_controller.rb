class Api::V1::RoutinesController < ApplicationController
    def create
        routine = Routine.create(routine_params)
       
        render json: routine.user
    end

    def show
        routine = Routine.find(params[:id])
        json_string = RoutineSerializer.new(routine).serializable_hash
        render json: json_string
    end

    def update
        routine = Routine.find(params[:id])

        routine.update(routine_params)
        render json: routine
    end

    def index
        routines = Routine.all
        render json: routines
    end

    def destroy
        routine = Routine.find(params[:id])
        # find_all routine_exercises where routine_id == routine.id
        routine.routine_exercises.each do |r_e|
            r_e.destroy
        end
        user = routine.user
        routine.destroy
        render json: user
    end

    private
    def routine_params
        params.require(:routine).permit(:name, :user_id)
    end
end
