class CreateMatrices < ActiveRecord::Migration
  def change
    create_table :matrices do |t|
      t.string :Type

      t.timestamps
    end
  end
end
