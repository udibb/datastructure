class CreateContenders < ActiveRecord::Migration
  def change
    create_table :contenders do |t|
      t.references :contendent
      t.string :contendent_type

      t.timestamps
    end
    add_index :contenders, :contendent_id
  end
end
