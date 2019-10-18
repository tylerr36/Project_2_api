# frozen_string_literal: true

class ApthuntersController < ApplicationController
  before_action :set_apthunter, only: %i[show update destroy]

  # GET /apthunters
  def index
    @apthunters = Apthunter.all

    render json: @apthunters
  end

  # GET /apthunters/1
  def show
    render json: @apthunter
  end

  # POST /apthunters
  def create
    @apthunter = Apthunter.new(apthunter_params)

    if @apthunter.save
      render json: @apthunter, status: :created, location: @apthunter
    else
      render json: @apthunter.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /apthunters/1
  def update
    if @apthunter.update(apthunter_params)
      render json: @apthunter
    else
      render json: @apthunter.errors, status: :unprocessable_entity
    end
  end

  # DELETE /apthunters/1
  def destroy
    @apthunter.destroy
  end

  private

  # Use callbacks to share common setup or constraints between actions.
  def set_apthunter
    @apthunter = Apthunter.find(params[:id])
  end

  # Only allow a trusted parameter "white list" through.
  def apthunter_params
    params.require(:apthunter).permit(:email, :password)
  end
end
