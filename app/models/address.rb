class Address < ActiveRecord::Base
  attr_accessible :city, :organization_id, :state, :street_address, :zip_code
  belongs_to :organization
end
