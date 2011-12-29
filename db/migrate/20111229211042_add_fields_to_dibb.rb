class AddFieldsToDibb < ActiveRecord::Migration
  def change
    add_column :dibbs, :title, :string
  end
end
