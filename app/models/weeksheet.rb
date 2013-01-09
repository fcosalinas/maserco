class Weeksheet < ActiveRecord::Base
	belongs_to :propose
	has_many :itemblocks

	after_save :create_itemblocks

  attr_accessible :week, :month, :propose, :itemblocks

  def create_itemblocks
  	propose.items.each do |item|
  		Itemblock.create(:propose_id => propose.id, :item_id => item.id, :weeksheet => self)
  	end
  end
end
