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

user1 = User.create(:first_name => "Admin", :last_name => "Admin", :isadmin => true, :email => "admin@admin.com", :password => "admin123", :password_confirmation => "admin123")
item1 = Item.create(:code => 108, :description => "HORMIGON H-25")
item2 = Item.create(:code => 80, :description => "DESPEJE Y LIMPIEZA DE FAJA")
p1 = Propose.create(:obra => "PUENTE_MACAL")
ip1 = ItemsPropose.create(:item => item1, :propose => p1)
ip2 = ItemsPropose.create(:item => item2, :propose => p1)