class WorkoutsController < ApplicationController
  before_action :set_workout, only: [:show, :update, :destroy]

  def index
    @workouts = Workouts.all
    json_response(@workouts)
  end

  def create
    @workout = Workouts.create!(workout_params)
    json_response(@workout, :created)
  end

  private

  def workout_params
    params.permit(:title)
  end

  def set_workout
    @workout = Workout.find(params[:id])
  end
end
