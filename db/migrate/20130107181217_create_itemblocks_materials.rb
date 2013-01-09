class CreateItemblocksMaterials < ActiveRecord::Migration
  def change
    create_table :itemblocks_materials do |t|

		t.references :itemblock, :null => false
		t.references :material, :null => false
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
