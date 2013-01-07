class ItemblocksMaterial < ActiveRecord::Base
  belongs_to :itemblock
  belongs_to :material
end
