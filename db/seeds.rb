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
Itemblock.delete_all
Machine.delete_all
Material.delete_all
Labor.delete_all
ItemblocksMaterial.delete_all
ItemblocksMachine.delete_all
ItemblocksLabor.delete_all
ItemblocksOther.delete_all
ItemblocksItem.delete_all
Weeksheet.delete_all


user1 = User.create(:first_name => "Admin", :last_name => "Admin", :isadmin => true, :email => "admin@admin.com", :password => "admin123", :password_confirmation => "admin123")
item1 = Item.create(:code => 198, :description => "RELLENO ESTRUCTURAL PERMEABLE")
item2 = Item.create(:code => 89, :description => "EXCAVACION A MAQUINA EN PUENTES Y ESTRUCTURAS")
item3 = Item.create(:code => 87, :description => "EXCAVACION A MANO EN SECO EN PUENTES Y ESTRUCTURAS")
item4 = Item.create(:code => 114, :description => "IMPERMEABILIZACION DE MUROS")
u1 = Unit.create(:description => "m3")
u2 = Unit.create(:description => "m2")
u3 = Unit.create(:description => "Kg")
u4 = Unit.create(:description => "N")
u5 = Unit.create(:description => "Dia")
u6 = Unit.create(:description => "Galon")
p1 = Propose.create(:obra => "PUENTE_MACAL")
p2 = Propose.create(:obra => "PUENTES_MENORES")
ip1 = ItemsPropose.create(:item => item1, :propose => p1, :quantity => 1414, :pu => 200, :unit => u1)
ip2 = ItemsPropose.create(:item => item2, :propose => p1, :quantity => 738, :pu => 1500, :unit => u1)
ip3 = ItemsPropose.create(:item => item3, :propose => p1, :quantity => 44, :pu => 350, :unit => u1)
ip4 = ItemsPropose.create(:item => item4, :propose => p1, :quantity => 485, :pu => 810, :unit => u2)
ip5 = ItemsPropose.create(:item => item3, :propose => p2)
maq1 = Machine.create(:code => "m15", :description => "Placa Vibratoria", :unit_id => u5.id)
maq2 = Machine.create(:code => "m7", :description => "Rodillo Bomag", :unit_id => u5.id)
maq3 = Machine.create(:code => "m12", :description => "Motobomba 3'", :unit_id => u5.id)
mat1 = Material.create(:code => "i152", :description => "Relleno", :unit_id => u1.id)
mat2 = Material.create(:code => "i40", :description => "Igol Denso", :unit_id => u6.id)
mo1 = Labor.create(:code => "h2", :role => "Jornal", :unit_id => u5.id)
mo2 = Labor.create(:code => "h3", :role => "Maestro", :unit_id => u5.id)
ws1 = Weeksheet.create(:month => 1, :week => 1, :propose => p1)
ws2 = Weeksheet.create(:month => 1, :week => 1, :propose => p2)
ws3 = Weeksheet.create(:month => 1, :week => 2, :propose => p1)
ws4 = Weeksheet.create(:month => 1, :week => 3, :propose => p1)
ws5 = Weeksheet.create(:month => 1, :week => 4, :propose => p1)
ws6 = Weeksheet.create(:month => 1, :week => 5, :propose => p1)
ws7 = Weeksheet.create(:month => 2, :week => 1, :propose => p1)
ws8 = Weeksheet.create(:month => 2, :week => 2, :propose => p1)
ws9 = Weeksheet.create(:month => 2, :week => 3, :propose => p1)
ws10 = Weeksheet.create(:month => 2, :week => 4, :propose => p1)
ws11 = Weeksheet.create(:month => 2, :week => 5, :propose => p1)
ibmat1 = ItemblocksMaterial.create(:itemblock => Itemblock.find_by_item_id_and_propose_id(item1.id,p1.id), :material => mat1, :loss => 0.71, :adqvalue => 1800, :transport => 0, :unitarycost => 2535)
ibmach1 = ItemblocksMachine.create(:itemblock => Itemblock.find_by_item_id_and_propose_id(item1.id,p1.id), :machine => maq1, :performance => 20, :costperunit => 3000, :unitarycost => 150)
ibmach2 = ItemblocksMachine.create(:itemblock => Itemblock.find_by_item_id_and_propose_id(item1.id,p1.id), :machine => maq2, :performance => 40, :costperunit => 15000, :unitarycost => 375)
ibmach3 = ItemblocksMachine.create(:itemblock => Itemblock.find_by_item_id_and_propose_id(item1.id,p1.id), :machine => maq3, :performance => 40, :costperunit => 12000, :unitarycost => 300)
iblab1 = ItemblocksLabor.create(:itemblock => Itemblock.find_by_item_id_and_propose_id(item1.id,p1.id), :labor => mo1, :performance => 5, :dailylaws => 19000, :unitarycost => 3800)
