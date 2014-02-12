class CreateMovimientos < ActiveRecord::Migration
  def change
    create_table :movimientos do |t|
      t.integer :tipo_movimiento
      t.integer :pasajero_id
      t.integer :aeronave_id

      t.timestamps
    end
  end
end
