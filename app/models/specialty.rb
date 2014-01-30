class Specialty < ActiveRecord::Base
  attr_accessible :name
  has_many :leaders
end
