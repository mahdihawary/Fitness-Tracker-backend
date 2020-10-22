class Api::V1::RoutineExercisesController < ApplicationController
    def create
        routine_exercise = RoutineExercise.create(routine_exercise_params)
        render json: routine_exercise
    end

    private

    def routine_exercise_params
        params.require(:routine_exercise).permit(:exercise_id, :routine_id)
    end
end
