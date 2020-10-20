class Api::V1::DaysController < ApplicationController

  def index
    days = Day.all

    render json: days
  end

  def create
    day = Day.create(day_params)
    render json: day
  end

  private

  def day_params
    params.require(:day).permit(:user_id, :exercise_id, :date, :weight, :rep, :set, :distance, :time)
  end

end
