class CreateItems < ActiveRecord::Migration
  def change
    create_table :items do |t|
      t.string :description
      t.int :code

      t.timestamps
    end
  end
end
