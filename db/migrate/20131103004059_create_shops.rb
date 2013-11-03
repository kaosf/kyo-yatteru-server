class CreateShops < ActiveRecord::Migration
  def change
    create_table :shops do |t|
      t.string :name
      t.string :token
      t.integer :status_id

      t.timestamps
    end
  end
end
