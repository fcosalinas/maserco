class Propose < ActiveRecord::Base
  attr_accessible :obra
  has_many :items
end
