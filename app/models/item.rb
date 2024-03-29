# == Schema Information
#
# Table name: items
#
#  id          :integer          not null, primary key
#  description :string(255)
#  code        :integer
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#

class Item < ActiveRecord::Base
  has_many :itemblocks, :through => :itemblocks_items
  has_many :itemblocks_items

  attr_accessible :code, :description, :itemblocks
end
