class Comment < ActiveRecord::Base    #Core
  belongs_to :claim
  belongs_to :owner,
              :class_name => "User",
              :foreign_key => "owner_id"
  has_many :likes

  validates_presence_of :claim
  validates_presence_of :owner
end
class Comment                         #Fields
  #content:string

  validates_presence_of :content
end
class Comment                         #Links
  has_many :likers,
            :through => :likes,
            :source => :user
end
