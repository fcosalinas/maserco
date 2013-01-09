# == Schema Information
#
# Table name: items_proposes
#
#  id         :integer          not null, primary key
#  item_id    :integer          not null
#  propose_id :integer          not null
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

class ItemsPropose < ActiveRecord::Base
  belongs_to :item
  belongs_to :propose
  
  attr_accessible :item, :propose, :quantity, :pu, :unit

  validates_uniqueness_of :propose_id, :scope => [:item_id]
  
end
