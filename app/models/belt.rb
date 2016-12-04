class Belt < ActiveRecord::Base
  belongs_to :student
  belongs_to :belt_level
end
