class CreateVisuals < ActiveRecord::Migration
  def change
    create_table :visuals do |t|
      t.integer :trip_id
      t.string :media_type
      t.integer :time_taken
      t.text :thumbnail_url
      t.text :standard_url
      t.text :caption
      t.float :lat
      t.float :lng
      t.string :username
      t.integer :ig_id
      t.text :profile_pic
      t.timestamps
    end
  end
end
