class Dibb < ActiveRecord::Base   #Core
  belongs_to :owner,
              :class_name => "User",
              :foreign_key => "owner_id"
  has_many :claims

  validates_presence_of :owner
end
class Dibb                        #Fields
  #title:string
  validates_presence_of :title #maybe test for uniqueness (unique check includes tags)
end
