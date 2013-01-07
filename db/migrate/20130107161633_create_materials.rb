class CreateMaterials < ActiveRecord::Migration
  def change
    create_table :materials do |t|
      t.integer :code
      t.string :description
      t.integer :unit
      t.float :loss
      t.integer :adqvalue
      t.integer :transport
      t.integer :unitarycost
      t.float :sitevalue
      t.float :realcost

      t.timestamps
    end
  end
end
