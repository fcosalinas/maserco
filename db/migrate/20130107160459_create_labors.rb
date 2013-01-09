class CreateLabors < ActiveRecord::Migration
  def change
    create_table :labors do |t|
      t.integer :code
      t.string :role
      t.references :unit, :null => false

      t.timestamps
    end
  end
end
