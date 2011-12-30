class Claim < ActiveRecord::Base    #Core
  belongs_to :dibb
  belongs_to :owner,
              :class_name => "User",
              :foreign_key => "owner_id"
  belongs_to :contender
  has_many :comments
  has_many :confirms

  validates_presence_of :dibb
  validates_presence_of :owner
  validates_presence_of :contender
end
class Claim                         #Fields
  #title:string

  validates_presence_of :title    #maybe test for uniqueness within the dibb
end
class Claim                         #Links
  has_many :confirmers,
            :through => :confirms,
            :source => :user
end
