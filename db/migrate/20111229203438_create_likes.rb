class CreateLikes < ActiveRecord::Migration
  def change
    create_table :likes do |t|
      t.references :user
      t.references :comment

      t.timestamps
    end
    add_index :likes, :user_id
    add_index :likes, :comment_id
  end
end
