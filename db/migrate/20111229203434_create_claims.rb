class CreateClaims < ActiveRecord::Migration
  def change
    create_table :claims do |t|
      t.references :dibb
      t.references :owner
      t.references :contender

      t.timestamps
    end
    add_index :claims, :dibb_id
    add_index :claims, :owner_id
    add_index :claims, :contender_id
  end
end
