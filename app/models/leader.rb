class Leader < ActiveRecord::Base
  attr_accessible :email, :first_name, :last_name, :specialty
  belongs_to :chapter
  has_many :scouts
  has_one :chapter
  has_many :specialties
end
