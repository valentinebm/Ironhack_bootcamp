class RenameMinutes < ActiveRecord::Migration[5.0]
  def change
    rename_column :time_entries, :miutes, :minutes
  end
end
