class Contender < ActiveRecord::Base
  belongs_to :contendent,                       #The actuall contendent
              :polymorphic => true                #means it can be anything (like a user or a nonuser)
  has_many :claims                              #you can claim more than one dibb
end
