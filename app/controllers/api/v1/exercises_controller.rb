class Api::V1::ExercisesController < ApplicationController

  def index
    exercises = Exercise.all 

    render json: exercises, only: [ :id, :name ]
  end

  def show
    exercise = Exercise.find(params[:id]) 

    render json: exercise, only: [ :id, :name ]
  end
end
