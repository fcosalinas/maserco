class AddUnitToItemsPropose < ActiveRecord::Migration
  def change
    add_column :items_proposes, :unit, :unit
    add_index  :items_proposes, :unit
  end
end
