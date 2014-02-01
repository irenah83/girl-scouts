class Organization < ActiveRecord::Base
  has_many :addresses
  has_many :chapters
end
