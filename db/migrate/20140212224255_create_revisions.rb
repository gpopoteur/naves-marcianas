class CreateRevisions < ActiveRecord::Migration
  def change
    create_table :revisions do |t|
      t.string :revisior
      t.integer :aeronave_id

      t.timestamps
    end
  end
end
