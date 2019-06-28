class CreateAppointments < ActiveRecord::Migration[5.2]
  def change
    create_table :appointments do |t|
      t.datetime :time
      t.references :employee, foreign_key: true
      t.references :customer, foreign_key: true

      t.timestamps
    end
  end
end
