class DoctorsController < ApplicationController
  def index
    @doctors = Doctor.all

    render json: @doctors
  end

  def show
    @doctor = Doctor.find(params[:id])

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

  private

  def doctor_params
    params.require(:doctor)
          .permit(:firstname, :lastname, :specialty, :qualifications, :experience, :education, :additional_info)
  end
end
