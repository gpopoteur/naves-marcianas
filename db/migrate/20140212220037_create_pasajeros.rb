class CreatePasajeros < ActiveRecord::Migration
  def change
    create_table :pasajeros do |t|
      t.string :nombre

      t.timestamps
    end
  end
end
