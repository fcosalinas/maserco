class ItemblocksLabor < ActiveRecord::Base
  belongs_to :itemblock
  belongs_to :labor
end
