class CreateItemblocksMaterials < ActiveRecord::Migration
  def change
    create_table :itemblocks_materials do |t|

		t.references :itemblock, :null => false
		t.references :material, :null => false
      t.timestamps
    end
  end
end
