class CreateItemblocksItems < ActiveRecord::Migration
  def change
    create_table :itemblocks_items do |t|

		t.references :itemblock, :null => false
		t.references :item, :null => false
      t.timestamps
    end
  end
end
