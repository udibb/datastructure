class Confirm < ActiveRecord::Base
  belongs_to :user
  belongs_to :claim
end
