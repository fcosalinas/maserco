class Propose < ActiveRecord::Base
  has_many :items, :through => :items_proposes
  has_many :items_proposes

  attr_accessible :items, :obra
end
