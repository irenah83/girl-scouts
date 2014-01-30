class Organization < ActiveRecord::Base
  attr_accessible :organization_name
  has_many :addresses
  has_many :chapters
end
