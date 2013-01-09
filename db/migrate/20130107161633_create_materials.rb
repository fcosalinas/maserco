class CreateMaterials < ActiveRecord::Migration
  def change
    create_table :materials do |t|
      t.integer :code
      t.string :description
      t.references :unit

      t.timestamps
    end
  end
end
