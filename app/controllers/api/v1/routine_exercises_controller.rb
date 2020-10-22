class Api::V1::RoutineExercisesController < ApplicationController
     def create
        routine_exercise = Routine.create(routine_exercise_params)
        render json: routine_exercise
    end


    private
    def routine_exercise_params
        params.require(:routine_exercise).permit(:routine_id, :exercise_id)
    end
end
