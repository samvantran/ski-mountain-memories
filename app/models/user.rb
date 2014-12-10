class User < ActiveRecord::Base
  has_and_belongs_to_many :trips
  has_many :visuals, through: :trips

#should this belong to a trip?
#this is just so admins can delete everyything. 
  def self.destroy_subs(tag_id=nil)
    if tag_id==nil
      Instagram.delete_subscription(object: "all")#all subs user, locations, tags etc. 
    else
      Instagram.delete_subscription(object: "tag", object_id: tag_id)
  end
end

def self.destroy_stuv
  self.destroy_subs
  Trip.destroy_all
  User.destroy_all
  Visual.destroy_all
end
end

