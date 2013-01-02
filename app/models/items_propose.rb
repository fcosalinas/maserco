class ItemsPropose < ActiveRecord::Base
  belongs_to :item
  belongs_to :propose

  attr_accessible :item, :propose
end
