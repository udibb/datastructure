class CreateComments < ActiveRecord::Migration
  def change
    create_table :comments do |t|
      t.references :claim
      t.references :owner

      t.timestamps
    end
    add_index :comments, :claim_id
    add_index :comments, :owner_id
  end
end
