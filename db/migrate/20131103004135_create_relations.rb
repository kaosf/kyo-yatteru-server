class CreateRelations < ActiveRecord::Migration
  def change
    create_table :relations do |t|
      t.integer :shop_id
      t.integer :user_id

      t.timestamps
    end
  end
end
