class ItemblocksItem < ActiveRecord::Base
  belongs_to :itemblock
  belongs_to :item
  
  attr_accessible :item, :itemblock
end
