class ItemblocksOther < ActiveRecord::Base
  belongs_to :itemblock
  belongs_to :other
  
  attr_accessible :itemblock, :other
end
