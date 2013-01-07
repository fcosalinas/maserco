class CreateItemblocksLabors < ActiveRecord::Migration
  def change
    create_table :itemblocks_labors do |t|

		t.references :itemblock, :null => false
		t.references :labor, :null => false
      t.timestamps
    end
  end
end
