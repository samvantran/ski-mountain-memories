class Trip < ActiveRecord::Base
  belongs_to :user
  belongs_to :mountain
  has_many :media
end
