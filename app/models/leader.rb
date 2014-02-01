class Leader < ActiveRecord::Base
  belongs_to :chapter
  has_many :scouts
  has_one :chapter
  has_many :specialties
end
