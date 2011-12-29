class AddFieldsToClaim < ActiveRecord::Migration
  def change
    add_column :claims, :title, :string
  end
end
