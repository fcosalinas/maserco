class Material < ActiveRecord::Base
  attr_accessible :adqvalue, :code, :description, :loss, :realcost, :sitevalue, :transport, :unit, :unitarycost
end
