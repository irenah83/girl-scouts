class Badge < ActiveRecord::Base
  attr_accessible :badge_name
  has_and_belongs_to_many :scouts
end
