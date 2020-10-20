class Api::V1::DaysController < ApplicationController

  def index
    days = Day.all

    render json: days
  end

  def create
    day = Day.create(day_params)
  end

  private

  def day_params
    params.require(:day).permit(:user, :exercise, :date, :weight, :rep, :set, :distance, :time)
  end

end
