class CreateLabors < ActiveRecord::Migration
  def change
    create_table :labors do |t|
      t.integer :code
      t.string :role
      t.integer :performance
      t.integer :dailylaws
      t.integer :unitarycost
      t.float :totaldh
      t.float :realcost

      t.timestamps
    end
  end
end
