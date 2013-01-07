# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

Item.delete_all
Propose.delete_all
ItemsPropose.delete_all
User.delete_all
Unit.delete_all

user1 = User.create(:first_name => "Admin", :last_name => "Admin", :isadmin => true, :email => "admin@admin.com", :password => "admin123", :password_confirmation => "admin123")
item1 = Item.create(:code => 198, :description => "RELLENO ESTRUCTURAL PERMEABLE")
item2 = Item.create(:code => 89, :description => "EXCAVACION A MAQUINA EN PUENTES Y ESTRUCTURAS")
item3 = Item.create(:code => 87, :description => "EXCAVACION A MANO EN SECO EN PUENTES Y ESTRUCTURAS")
item4 = Item.create(:code => 114, :description => "IMPERMEABILIZACION DE MUROS")
u1 = Unit.create(:description => "m3")
u2 = Unit.create(:description => "m2")
u3 = Unit.create(:description => "Kg")
u4 = Unit.create(:description => "N")
p1 = Propose.create(:obra => "PUENTE_MACAL")
p2 = Propose.create(:obra => "PUENTES_MENORES")
ip1 = ItemsPropose.create(:item => item1, :propose => p1, :quantity => 1414, :pu => 200, :unit => u1)
ip2 = ItemsPropose.create(:item => item2, :propose => p1, :quantity => 738, :pu => 1500, :unit => u1)
ip3 = ItemsPropose.create(:item => item3, :propose => p1, :quantity => 44, :pu => 350, :unit => u1)
ip4 = ItemsPropose.create(:item => item4, :propose => p1, :quantity => 485, :pu => 810, :unit => u2)
ip5 = ItemsPropose.create(:item => item3, :propose => p2)