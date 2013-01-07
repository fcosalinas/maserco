class CreateItemblocksOthers < ActiveRecord::Migration
  def change
    create_table :itemblocks_others do |t|

		t.references :itemblock, :null => false
		t.references :other, :null => false
      t.timestamps
    end
  end
end
