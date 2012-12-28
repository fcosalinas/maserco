class CreateProposes < ActiveRecord::Migration
  def change
    create_table :proposes do |t|
      t.string :obra

      t.timestamps
    end
  end
end
