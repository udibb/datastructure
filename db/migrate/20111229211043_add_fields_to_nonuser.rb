class AddFieldsToNonuser < ActiveRecord::Migration
  def change
    add_column :nonusers, :name, :string
  end
end
