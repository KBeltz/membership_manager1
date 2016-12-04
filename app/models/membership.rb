class Membership < ActiveRecord::Base
  belongs_to :student
  belongs_to :membership_type
end
