class Trip < ActiveRecord::Base
  extend FriendlyId
  friendly_id :hashtag

  has_and_belongs_to_many :users
  validates_uniqueness_of :hashtag
  belongs_to :mountain
  has_many :visuals
  accepts_nested_attributes_for :users

  def self.genhashtag
    verbs=%w(sleeping crying laughing jumping dancing singing feasting sitting coding)
    fruits=%w(orange banana pineapple apple kiwi grape lime mango)
    adjectives=%w(passionate hot friendly lazy loving crazy smart tall fat kind boring)

    return "#{adjectives.sample}#{fruits.sample}#{verbs.sample}"
  end


end
  