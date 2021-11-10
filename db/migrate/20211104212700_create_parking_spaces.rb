class CreateParkingSpaces < ActiveRecord::Migration[6.1]
  def change
    create_table :parking_spaces do |t|
      t.string :name
      t.string :vehicle
      t.decimal :price, :precision => 8, :scale => 2

      t.timestamps
    end
  end
end
