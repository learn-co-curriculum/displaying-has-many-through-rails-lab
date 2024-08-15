class RenameDateToApppointmentDatetime < ActiveRecord::Migration[5.0]
  def change
    rename_column :appointments, :date, :appointment_datetime
  end
end
