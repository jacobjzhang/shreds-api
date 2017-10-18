class SchemesController < ApplicationController
  before_action :set_scheme, only: [:show, :update, :destroy]

  def index
    @schemes = Schemes.all
    json_response(@schemes)
  end

  def create
    @scheme = Schemes.create!(workout_params)
    json_response(@scheme, :created)
  end

  private

  def scheme_params
    params.permit(:title)
  end

  def set_scheme
    @scheme = Scheme.find(params[:id])
  end
end
