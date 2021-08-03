class PatientsController < ApplicationController

    def index
        @patients = Patient.all
    end

    def new
        @patient = Patient.new(patient_params)
    end

    def create
        @patient.create(patient_params)
        redirect_to patients_path
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

    def patient_params
        params.require(:patients).permit(:name, :age)
    end

end
