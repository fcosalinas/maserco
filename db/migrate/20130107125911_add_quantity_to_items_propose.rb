class AddQuantityToItemsPropose < ActiveRecord::Migration
  def change  	
    add_column :items_proposes, :quantity, :integer
    add_index  :items_proposes, :quantity
  end
end
