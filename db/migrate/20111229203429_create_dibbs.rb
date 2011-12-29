class CreateDibbs < ActiveRecord::Migration
  def change
    create_table :dibbs do |t|
      t.references :owner

      t.timestamps
    end
    add_index :dibbs, :owner_id
  end
end
