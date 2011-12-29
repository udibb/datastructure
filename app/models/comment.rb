class Comment < ActiveRecord::Base
  belongs_to :claim
  belongs_to :owner
end
