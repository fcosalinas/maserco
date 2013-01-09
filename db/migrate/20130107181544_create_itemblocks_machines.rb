class CreateItemblocksMachines < ActiveRecord::Migration
  def change
    create_table :itemblocks_machines do |t|

		t.references :itemblock, :null => false
		t.references :machine, :null => false
      t.float :performance
      t.float :costperunit
      t.integer :unitarycost
      t.float :quantperunit
      t.float :realcost
      t.string :location
      t.timestamps
    end
  end
end
