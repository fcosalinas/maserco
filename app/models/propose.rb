# == Schema Information
#
# Table name: proposes
#
#  id         :integer          not null, primary key
#  obra       :string(255)
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

class Propose < ActiveRecord::Base
  has_many :items, :through => :items_proposes
  has_many :items_proposes

  attr_accessible :items, :obra
end
