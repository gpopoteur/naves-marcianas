class CreateNaveNodrizas < ActiveRecord::Migration
  def change
    create_table :nave_nodrizas do |t|
      t.string :nombre

      t.timestamps
    end
  end
end
