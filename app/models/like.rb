class Like < ActiveRecord::Base
  belongs_to :user
  belongs_to :comment

  validates_presence_of :user
  validates_presence_of :comment
end
