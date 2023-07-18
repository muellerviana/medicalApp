class DoctorsController < ApplicationController
  before_action :set_doctor, only: %i[ show update destroy]

  def index
    @doctors = Doctor.all

    render json: @doctors
  end

  def show
    render json: @doctor
  end

  def create
    @doctor = Doctor.new(doctor_params)

    if @doctor.save 
      render json: @doctor
    else
      render json: @doctor.errors, status: 200 
    end
  end

  def update
    if @doctor.update(doctor_params)
      render json: @doctor
    else
      render json: @doctor.errors, status: :unprocessable_entity
    end
  end

  def destroy
    @doctor.destroy 

    render json: "The doctor was deleted"
  end

  private

  def set_doctor 
    @doctor = Doctor.find(params[:id])
  end

  def doctor_params
    params.require(:doctor)
          .permit(:firstname, :lastname, :specialty, :qualifications, :experience, :education, :additional_info)
  end
end
