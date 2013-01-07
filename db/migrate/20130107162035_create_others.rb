class CreateOthers < ActiveRecord::Migration
  def change
    create_table :others do |t|
      t.string :description
      t.float :quantity
      t.float :unitarycost
      t.float :cost

      t.timestamps
    end
  end
end
