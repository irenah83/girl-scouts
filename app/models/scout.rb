class Scout < ActiveRecord::Base
  has_and_belongs_to_many :badges
  has_many :leaders
  belongs_to :chapter
end
