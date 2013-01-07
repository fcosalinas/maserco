class Machine < ActiveRecord::Base
  attr_accessible :code, :description, :location, :performance, :quantperunit, :realcost, :unit, :unitarycost
end
