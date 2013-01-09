class Labor < ActiveRecord::Base
	has_one :unit
  attr_accessible :code, :role, :unit_id
end
