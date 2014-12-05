class Trip < ActiveRecord::Base
  has_and_belongs_to_many :users
  validates_uniqueness_of :hashtag
  belongs_to :mountain
  has_many :visuals
  accepts_nested_attributes_for :users
end
