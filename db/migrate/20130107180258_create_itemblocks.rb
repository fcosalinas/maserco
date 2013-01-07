class CreateItemblocks < ActiveRecord::Migration
  def change
    create_table :itemblocks do |t|
      t.float :quantity
      t.float :cdi
      t.float :cdo
      t.integer :propose_id

      t.timestamps
    end
  end
end
