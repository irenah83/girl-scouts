class Badge < ActiveRecord::Base
    has_and_belongs_to_many :scouts
    has_many: requirements, :as => :goal
end
