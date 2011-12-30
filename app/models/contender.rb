class Contender < ActiveRecord::Base    #Core
  belongs_to :contendent,
              :polymorphic => true
  has_many :claims

  validates_presence_of :contendent
end
