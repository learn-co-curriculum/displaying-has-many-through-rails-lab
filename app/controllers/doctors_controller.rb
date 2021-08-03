class DoctorsController < ApplicationController

    def index
        @doctors = Doctor.all
    end

    def new
        @doctor = Doctor.new(doctor_params)
    end

    def create
        @doctor.create(doctor_params)
        redirect_to doctors_path
    end

    def edit
        @doctor = Doctor.find(params[:id])
    end

    def show
        @doctor = Doctor.find(params[:id])
    end

    # def update

    # end


    private

    def doctor_params
        params.require(:doctors).permit(:name, :department)
    end

end
