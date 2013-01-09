class ItemblocksLabor < ActiveRecord::Base
  belongs_to :itemblock
  belongs_to :labor

  attr_accessible :labor, :itemblock, :performance, :dailylaws, :unitarycost, :totaldh, :realcost
end
