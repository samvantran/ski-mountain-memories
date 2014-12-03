class CreateTrips < ActiveRecord::Migration
  def change
    create_table :trips do |t|
      t.integer :user_id
      t.string :name
      t.float :lat
      t.float :lng
      t.string :hashtag
      t.integer :zoom_level

      t.timestamps
    end
  end
end
