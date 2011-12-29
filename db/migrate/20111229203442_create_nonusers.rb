class CreateNonusers < ActiveRecord::Migration
  def change
    create_table :nonusers do |t|

      t.timestamps
    end
  end
end
