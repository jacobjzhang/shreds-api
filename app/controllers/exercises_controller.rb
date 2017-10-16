class ExercisesController < ApplicationController
  include Response

  before_action :set_exercise, only: [:show, :update, :destroy]

  # GET /exercises
  def index
    @exercises = Exercise.all
    json_response(@exercises)
  end

  # POST /exercises
  def create
    @exercise = Exercise.create!(exercise_params)

    set_rep = exercise_params[:scheme]
    if set_rep && Scheme.where(set_rep)?  
      Scheme.create!(set_rep)

    json_response(@exercise, :created)
  end

  # GET /exercises/:id
  def show
    json_response(@exercise)
  end

  # PUT /exercises/:id
  def update
    @exercise.update(exercise_params)
    head :no_content
  end

  # DELETE /exercises/:id
  def destroy
    @exercise.destroy
    head :no_content
  end

  private

  def exercise_params
    # whitelist params
    params.permit(:name, :type, :description, :scheme)
  end

  def set_exercise
    @exercise = Exercise.find(params[:id])
  end
end
