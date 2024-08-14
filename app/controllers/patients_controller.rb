class PatientsController < ActionController::Base
  def index
  end

  def show
    @patient = Patient.find(params[:id])
  end
end
