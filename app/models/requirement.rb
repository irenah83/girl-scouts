class Requirement < ActiveRecord::Base
  attr_accessible :goal_id, :goal_type, :instructions, :name
end
