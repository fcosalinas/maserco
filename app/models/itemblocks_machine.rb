class ItemblocksMachine < ActiveRecord::Base
  belongs_to :itemblock
  belongs_to :machine
  
  attr_accessible :machine, :itemblock, :location, :performance, :unitarycost, :quantperunit, :realcost, :costperunit
end
