class Requirement < ActiveRecord::Base
  belongs_to:goal, :polymorphic => true
end
