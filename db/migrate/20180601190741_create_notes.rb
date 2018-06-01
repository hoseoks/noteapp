class CreateNotes < ActiveRecord::Migration
  def change
    create_table :notes do |t|
      t.string :notes
      t.integer :unit
      t.integer :date

      t.timestamps null: false
    end
  end
end
