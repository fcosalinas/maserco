class ItemblocksMaterial < ActiveRecord::Base
  belongs_to :itemblock
  belongs_to :material
  
  attr_accessible :material, :itemblock, :loss, :adqvalue, :transport, :unitarycost, :sitevalue, :realcost
end
