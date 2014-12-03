class CreateMountains < ActiveRecord::Migration
  def change
    create_table :mountains do |t|
      t.string :name
      t.integer :trip_id
      t.float :lat
      t.float :lng
      t.integer :zoom_level

      t.timestamps
    end
  end
end
