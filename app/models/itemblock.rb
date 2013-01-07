class Itemblock < ActiveRecord::Base
  has_many :labors, :through => :itemblocks_labors
  has_many :itemblocks_labors

  has_many :materials, :through => :itemblocks_materials
  has_many :itemblocks_materials

  has_many :machines, :through => :itemblocks_machines
  has_many :itemblocks_machines

  has_many :others, :through => :itemblocks_others
  has_many :itemblocks_others

  belongs_to :item

  attr_accessible :cdi, :cdo, :quantity, :labors, :materials, :machines, :others
end
