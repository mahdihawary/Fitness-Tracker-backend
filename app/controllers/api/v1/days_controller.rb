class Api::V1::DaysController < ApplicationController

  def index
    days = Day.all

    json_string = DaySerializer.new(days)

    render json: json_string
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
