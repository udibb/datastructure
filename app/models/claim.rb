class Claim < ActiveRecord::Base
  belongs_to :dibb
  belongs_to :owner
  belongs_to :contender
end
