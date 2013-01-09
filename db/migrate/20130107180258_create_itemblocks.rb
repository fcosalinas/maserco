class CreateItemblocks < ActiveRecord::Migration
  def change
    create_table :itemblocks do |t|
      t.float :quantity
      t.float :cdi
      t.float :cdo
      t.references :propose, :null => false
      t.references :item, :null => false
      t.references :weeksheet, :null => false

      t.timestamps
    end
  end
end
