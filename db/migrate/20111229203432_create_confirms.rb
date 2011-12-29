class CreateConfirms < ActiveRecord::Migration
  def change
    create_table :confirms do |t|
      t.references :user
      t.references :claim

      t.timestamps
    end
    add_index :confirms, :user_id
    add_index :confirms, :claim_id
  end
end
