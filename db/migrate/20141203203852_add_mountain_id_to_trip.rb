class AddMountainIdToTrip < ActiveRecord::Migration
  def change
    add_column :trips, :mountain_id, :integer
  end
end
