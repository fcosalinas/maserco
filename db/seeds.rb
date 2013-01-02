# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

item1 = Item.create(:code => 108, :description => "HORMIGON H-25")
p1 = Propose.create(:obra => "PUENTE_MACAL")
ip1 = ItemsPropose.create(:item => item1, :propose => p1)