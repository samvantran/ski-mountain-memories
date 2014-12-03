class RemoveLatLngZoomLevelFromTrip < ActiveRecord::Migration
  def change
    remove_column :trips, :lat
    remove_column :trips, :lng
    remove_column :trips, :zoom_level
  end
end
