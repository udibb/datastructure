class Nonuser < ActiveRecord::Base    #Core
  has_one :contender,                           #basically the contender is this nonuser
            :as => :contendent                    #means the nonuser is the contender's contendent

  after_create :make_contender
end
class Nonuser                         #Fields
  #name:string
  validates_presence_of :name
end
class Nonuser                         #Methods
  private
    def make_contender
      Contender.create(:contendent => self)
    end
end
