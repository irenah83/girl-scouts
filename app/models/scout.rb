class Scout < ActiveRecord::Base
  attr_accessible :chapter_id, :first_name, :last_name, :leader_id, :member_since
  has_and_belongs_to_many :badges
  has_many :leaders
  belongs_to :chapter
end
