class CreateAeronaves < ActiveRecord::Migration
  def change
    create_table :aeronaves do |t|
      t.string :nombre
      t.integer :max_marcianos
      t.integer :nave_origen
      t.integer :nave_destino

      t.timestamps
    end
  end
end
