class ItemblocksMachine < ActiveRecord::Base
  belongs_to :itemblock
  belongs_to :machine
end
