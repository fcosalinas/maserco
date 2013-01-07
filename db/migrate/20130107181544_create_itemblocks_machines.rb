class CreateItemblocksMachines < ActiveRecord::Migration
  def change
    create_table :itemblocks_machines do |t|

		t.references :itemblock, :null => false
		t.references :machine, :null => false
      t.timestamps
    end
  end
end
