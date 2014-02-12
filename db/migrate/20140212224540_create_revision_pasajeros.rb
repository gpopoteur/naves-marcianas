class CreateRevisionPasajeros < ActiveRecord::Migration
  def change
    create_table :revision_pasajeros do |t|
      t.integer :revision_id
      t.integer :pasajero_id

      t.timestamps
    end
  end
end
