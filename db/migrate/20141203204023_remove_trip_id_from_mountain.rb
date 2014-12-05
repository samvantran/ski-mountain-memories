class RemoveTripIdFromMountain < ActiveRecord::Migration
  def change
    remove_column :mountains, :trip_id
  end
end
