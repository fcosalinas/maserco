class ItemblocksItem < ActiveRecord::Base
  belongs_to :itemblock
  belongs_to :item
end
