class CreateVisuals < ActiveRecord::Migration
  def change
    create_table :visuals do |t|
      t.integer :trip_id
      t.boolean :photo
      t.datetime :time_taken
      t.string :thumbnail_url
      t.string :standard_url
      t.string :caption
      t.float :lat
      t.float :lng

      t.timestamps
    end
  end
end
