class Chapter < ActiveRecord::Base
  attr_accessible :leader_id, :meeting_time, :name, :organization_id
end
