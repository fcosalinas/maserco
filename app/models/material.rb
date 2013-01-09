class Material < ActiveRecord::Base
	has_one :unit
  attr_accessible :code, :description, :unit_id
end
