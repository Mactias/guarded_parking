class CreateReservations < ActiveRecord::Migration[6.1]
  def change
    create_table :reservations do |t|
      t.string :name
      t.string :license_plate, limit: 9
      t.string :pesel, limit: 11
      t.date :start_date
      t.date :end_date

      t.timestamps
    end
  end
end
