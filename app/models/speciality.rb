class Speciality < ActiveRecord::Base
  has_many :leaders
  has_many: requirements, :as -> :goal
end
