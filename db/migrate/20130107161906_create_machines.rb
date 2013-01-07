class CreateMachines < ActiveRecord::Migration
  def change
    create_table :machines do |t|
      t.integer :code
      t.string :location
      t.string :description
      t.integer :unit
      t.float :performance
      t.integer :unitarycost
      t.float :quantperunit
      t.float :realcost

      t.timestamps
    end
  end
end
