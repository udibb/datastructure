class User < ActiveRecord::Base   #Core
  has_many :owned_dibbs,
            :class_name => "Dibb",
            :foreign_key => "owner_id"
  has_many :owned_claims,
            :class_name => "Claim",
            :foreign_key => "owner_id"
  has_many :owned_comments,
            :class_name => "Comment",
            :foreign_key => "owner_id"
  has_many :confirms
  has_many :likes
  has_one :contender,
            :as => :contendent

  after_create :make_contender
end
class User                        #Fields
  #name:string
  #email:string
  
  validates :name, :presence => true
  validates :email, :presence => true, :uniqueness => true
end
class User                        #Links
  has_many :liked_comments,
            :through => :likes,
            :source => :comment
  has_many :confirmed_claims,
            :through => :confirms,
            :source => :claim
  has_many :confirmed_dibbs,
            :through => :confirmed_claims,
            :source => :dibb
  alias :following :confirmed_dibbs   #TODO: maybe change this so that you can unfollow without unconfirming
end
class User                        #Methods
  private
    def make_contender
      Contender.create(:contendent => self)
    end
end
