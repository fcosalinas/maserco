class CreateItemblocksLabors < ActiveRecord::Migration
  def change
    create_table :itemblocks_labors do |t|

		t.references :itemblock, :null => false
		t.references :labor, :null => false
      t.integer :performance
      t.integer :dailylaws
      t.integer :unitarycost
      t.float :totaldh
      t.float :realcost
      t.timestamps
    end
  end
end
