class CreateWeeksheets < ActiveRecord::Migration
  def change
    create_table :weeksheets do |t|
      t.integer :week
      t.integer :month
      t.references :propose

      t.timestamps
    end
  end
end
