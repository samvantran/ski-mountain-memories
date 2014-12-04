class Visual < ActiveRecord::Base
  validates_uniqueness_of :standard_url
  belongs_to :trip
end
