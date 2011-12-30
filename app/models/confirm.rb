class Confirm < ActiveRecord::Base    #Core
  belongs_to :user
  belongs_to :claim

  validates_presence_of :user
  validates_presence_of :claim
end
