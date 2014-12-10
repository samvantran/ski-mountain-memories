class Visual < ActiveRecord::Base
  validates_uniqueness_of :standard_url
  belongs_to :trip
  before_create :destroy_extra_visuals


private

def destroy_extra_visuals
  if Visual.count >3000
    Visual.select(:id).limit(1000).destroy_all
  end
end

end

