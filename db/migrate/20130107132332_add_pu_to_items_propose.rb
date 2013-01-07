class AddPuToItemsPropose < ActiveRecord::Migration
  def change
    add_column :items_proposes, :pu, :integer
    add_index  :items_proposes, :pu
  end
end
