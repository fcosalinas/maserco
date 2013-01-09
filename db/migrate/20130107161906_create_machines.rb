class CreateMachines < ActiveRecord::Migration
  def change
    create_table :machines do |t|
      t.integer :code
      t.string :description
      t.references :unit, :null => false

      t.timestamps
    end
  end
end
