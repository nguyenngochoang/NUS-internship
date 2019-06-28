class RemoveEmployeeIdInAppointment < ActiveRecord::Migration[5.2]
  def change
      remove_reference :appointments, :employee, index: true, foreign_key: true
  end
end
