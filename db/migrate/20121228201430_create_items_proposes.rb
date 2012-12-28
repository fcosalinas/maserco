class CreateItemsProposes < ActiveRecord::Migration
  def change
    create_table :items_proposes do |t|

		t.references :item, :null => false
		t.references :propose, :null => false
      t.timestamps
    end
  	add_index :items_proposes, [:item_id, :propose_id], :unique => false
  end
end
