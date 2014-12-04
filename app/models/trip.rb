class Trip < ActiveRecord::Base
  has_and_belongs_to_many :users
  belongs_to :mountain
  has_many :media
end
