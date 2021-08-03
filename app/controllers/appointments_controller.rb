class AppointmentsController < ApplicationController

    def new
        @appointment = Appointment.new
    end

    def create
        @appointment.create(appointment_params)
        redirect_to appointments_path
    end

    def edit
        @appointment = Appointment.find(params[:id])
    end

    def show
        @appointment = Appointment.find(params[:id])
    end

    # def update

    # end


    private

    def appointment_params
        params.require(:appointments).permit(:appointment_datetime)
    end

end
