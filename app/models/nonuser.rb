class Nonuser < ActiveRecord::Base
  has_one :contender,                           #basically the contender is this nonuser
            :as => :contendent                    #means the nonuser is the contender's contendent
end
