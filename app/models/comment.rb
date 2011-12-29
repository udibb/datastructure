class Comment < ActiveRecord::Base
  belongs_to :claim                             #
  belongs_to :owner,                            #the user that comments
              :class_name => "User",              #because the owner is a user
              :foreign_key => "owner_id"          #because the previous line messed this up
  has_many :likes                               #

#\/ \/ \/stuff that is not essential to the structure\/ \/ \/

  has_many :likers,                             #the users that liked this comment
            :through => :likes,                   #
            :source => :user                      #in the like class this links to the user
end
