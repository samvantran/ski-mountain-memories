class Visual < ActiveRecord::Base
  include ActiveModel::Serializers::JSON
  validates_uniqueness_of :standard_url
  belongs_to :trip


  def attributes
    {trip_id: nil, media_type: nil, time_taken: nil, thumbnail_url: nil, standard_url: nil, caption: nil, lat: nil, lng: nil, created_at: nil, updated_at: nil}
  end

end

