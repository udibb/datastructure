class Claim < ActiveRecord::Base
  belongs_to :dibb                              #
  belongs_to :owner,                            #the user that made the claim, not the user that the claim is claiming
              :class_name => "User",              #because the owner is a user
              :foreign_key => "owner_id"          #because the previous line messed this up
  belongs_to :contender                         #
  has_many :comments                            #the comments that are biased toward this claim
  has_many :confirms                            #

#\/ \/ \/stuff that is not essential to the structure\/ \/ \/

  has_many :confirmers,                         #
            :through => :confirms,                #
            :source => :user                      #in the confirm class this links to the user
end
