class CreateTimeEntries < ActiveRecord::Migration[5.0]
  def change
    create_table :time_entries do |t|

      t.references :project, index:true
      t.integer :hours
      t.integer :miutes
      t.text :comments
      t.datetime :datetime

      t.timestamps
    end
  end
end
