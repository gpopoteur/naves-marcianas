class PasajeroEnNave < ActiveRecord::Migration
  def change
  	add_column :pasajeros, :aeronave_id, :integer
  end
end
