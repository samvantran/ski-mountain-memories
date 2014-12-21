class Visual < ActiveRecord::Base
  validates_uniqueness_of :standard_url
  belongs_to :trip
  before_create :destroy_extra_visuals


  private

  def destroy_extra_visuals
    if Visual.count >5000
      Visual.where("id > 0 AND id < 3000").delete_all
    end
  end

end

